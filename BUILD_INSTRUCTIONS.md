# 📱 הוראות בניית APK - Technician PRO

## ✅ הכל מוכן! רק צריך לבנות

כל הקבצים והקונפיגורציות מוכנים. פשוט תעקוב אחרי השלבים הבאים:

## דרישות מקדימות

1. **Node.js** (גרסה 16 ומעלה) - [הורד כאן](https://nodejs.org/)
2. **Android Studio** - [הורד כאן](https://developer.android.com/studio)
3. **JDK 17** (מותקן בד"כ עם Android Studio)

## 🚀 שלבים לבניית APK

### שלב 1: Clone את הפרויקט
```bash
git clone <repository-url>
cd tech-pro-rtl
```

### שלב 2: התקן Dependencies
```bash
npm install
```

זה יתקין:
- @capacitor/core
- @capacitor/cli
- @capacitor/android

### שלב 3: בנה את ה-APK
```bash
cd android
./gradlew assembleDebug
```

או באמצעות npm script:
```bash
npm run android:build
```

### שלב 4: מצא את ה-APK

ה-APK יהיה כאן:
```
android/app/build/outputs/apk/debug/app-debug.apk
```

### שלב 5: התקן על הטלפון

**דרך 1 - העתק ישירות:**
1. העבר את הקובץ `app-debug.apk` לטלפון שלך
2. פתח אותו בטלפון
3. אפשר התקנה מ"מקורות לא ידועים" אם נדרש
4. לחץ על "התקן"

**דרך 2 - דרך ADB:**
```bash
adb install android/app/build/outputs/apk/debug/app-debug.apk
```

## 📋 מבנה הפרויקט

```
tech-pro-rtl/
├── www/
│   └── index.html          # האפליקציה המלאה (HTML/CSS/JS)
├── android/                # פרויקט Android Native
│   ├── app/
│   │   └── build/
│   │       └── outputs/
│   │           └── apk/
│   │               └── debug/
│   │                   └── app-debug.apk  # ← זה ה-APK!
│   └── build.gradle
├── capacitor.config.json   # קונפיגורציית Capacitor
├── package.json
└── BUILD_INSTRUCTIONS.md   # הקובץ הזה
```

## 🎨 פיצ'רים באפליקציה

✅ מסך הבית היוקרתי עם אנימציות
✅ ניהול שירותים מלא (הוסף, ערוך, מחק)
✅ חתימה דיגיטלית
✅ ניווט GPS לכתובות
✅ סטטיסטיקות מתקדמות
✅ גיבוי ושחזור נתונים
✅ Dark Mode
✅ תמיכה מלאה ב-RTL (עברית)
✅ Offline - עובד ללא אינטרנט
✅ אחסון מקומי (LocalStorage)

## ⚙️ קונפיגורציות

### שם האפליקציה
- **שם:** Technician PRO
- **Package:** com.techprortl.app
- **גרסה:** 2.0.0

### הרשאות Android
- Internet (לניווט GPS)
- Network State (בדיקת קישוריות)
- Vibrate (משוב מישוש)

### RTL Support
התמיכה ב-RTL כבר מוגדרת:
- `android:supportsRtl="true"` ב-AndroidManifest.xml
- `dir="rtl"` ב-HTML

## 🔧 פתרון בעיות

### אם Gradle נכשל:
```bash
cd android
./gradlew clean
./gradlew assembleDebug --stacktrace
```

### אם חסרים SDK Tools:
פתח Android Studio → SDK Manager → התקן:
- Android SDK Platform 34
- Android SDK Build-Tools 34
- Android SDK Platform-Tools

### אם יש שגיאות JDK:
וודא שיש לך JDK 17:
```bash
java -version
```

צריך לראות: `openjdk version "17"` או גבוה יותר

## 🚀 טיפים

### בניית Release APK (עם חתימה)
```bash
cd android
./gradlew assembleRelease
```

### הרצה ישירה על מכשיר מחובר
```bash
npx cap run android
```

### פתיחה ב-Android Studio
```bash
npx cap open android
```

## 📦 גודל APK

- **Debug APK:** ~7-10 MB
- **Release APK (minified):** ~3-5 MB

## 🎯 Build Time

- **בנייה ראשונה:** 2-5 דקות
- **בניות נוספות:** 30-60 שניות

## ✨ זה הכל!

הפרויקט מוכן לחלוטין. פשוט תריץ את הפקודות למעלה והאפליקציה תהיה מותקנת על הטלפון תוך דקות ספורות!

---

**Built with ❤️ using Capacitor & Claude**

© 2024 Technician PRO - Avi Baruch Service App
