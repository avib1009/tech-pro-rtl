#!/bin/bash

# 🔨 Technician PRO - Build Script
# This script builds the Android APK automatically

echo "🚀 Starting Technician PRO Build Process..."
echo ""

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Check if Node.js is installed
echo -e "${BLUE}[1/6]${NC} Checking Node.js..."
if ! command -v node &> /dev/null; then
    echo -e "${RED}❌ Node.js is not installed!${NC}"
    echo "Please install Node.js from https://nodejs.org/"
    exit 1
fi
echo -e "${GREEN}✅ Node.js $(node -v) found${NC}"
echo ""

# Check if Java is installed
echo -e "${BLUE}[2/6]${NC} Checking Java..."
if ! command -v java &> /dev/null; then
    echo -e "${RED}❌ Java is not installed!${NC}"
    echo "Please install JDK 17 or higher"
    exit 1
fi
echo -e "${GREEN}✅ Java found${NC}"
echo ""

# Install dependencies
echo -e "${BLUE}[3/6]${NC} Installing dependencies..."
if [ ! -d "node_modules" ]; then
    npm install
    if [ $? -ne 0 ]; then
        echo -e "${RED}❌ npm install failed!${NC}"
        exit 1
    fi
    echo -e "${GREEN}✅ Dependencies installed${NC}"
else
    echo -e "${YELLOW}⚠️  Dependencies already installed (skipping)${NC}"
fi
echo ""

# Sync Capacitor
echo -e "${BLUE}[4/6]${NC} Syncing Capacitor..."
npx cap sync android
if [ $? -ne 0 ]; then
    echo -e "${RED}❌ Capacitor sync failed!${NC}"
    exit 1
fi
echo -e "${GREEN}✅ Capacitor synced${NC}"
echo ""

# Build APK
echo -e "${BLUE}[5/6]${NC} Building Android APK..."
echo "This may take a few minutes on first build..."
cd android
chmod +x gradlew
./gradlew assembleDebug
BUILD_STATUS=$?
cd ..

if [ $BUILD_STATUS -ne 0 ]; then
    echo -e "${RED}❌ Build failed!${NC}"
    echo ""
    echo "Troubleshooting tips:"
    echo "1. Make sure Android SDK is installed"
    echo "2. Try: cd android && ./gradlew clean"
    echo "3. Check BUILD_INSTRUCTIONS.md for more help"
    exit 1
fi
echo -e "${GREEN}✅ APK built successfully!${NC}"
echo ""

# Find and display APK location
echo -e "${BLUE}[6/6]${NC} Locating APK..."
APK_PATH="android/app/build/outputs/apk/debug/app-debug.apk"

if [ -f "$APK_PATH" ]; then
    APK_SIZE=$(du -h "$APK_PATH" | cut -f1)
    echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo -e "${GREEN}🎉 BUILD SUCCESSFUL!${NC}"
    echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo ""
    echo -e "${YELLOW}📱 APK Location:${NC}"
    echo "   $APK_PATH"
    echo ""
    echo -e "${YELLOW}📦 APK Size:${NC} $APK_SIZE"
    echo ""
    echo -e "${YELLOW}📲 Install Instructions:${NC}"
    echo "   1. Transfer the APK to your Android phone"
    echo "   2. Open the file and tap 'Install'"
    echo "   3. Enable 'Install from unknown sources' if prompted"
    echo ""
    echo -e "${YELLOW}🔧 Or install via ADB:${NC}"
    echo "   adb install $APK_PATH"
    echo ""
    echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
else
    echo -e "${RED}❌ APK file not found at expected location${NC}"
    echo "Expected: $APK_PATH"
    exit 1
fi
