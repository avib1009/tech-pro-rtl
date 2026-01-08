# 🔨 Technician PRO - אפליקציית ניהול שירותים

<div align="center">

![Version](https://img.shields.io/badge/version-2.0.0-blue.svg)
![Platform](https://img.shields.io/badge/platform-Android-green.svg)
![License](https://img.shields.io/badge/license-MIT-yellow.svg)

אפליקציית ניהול שירותים מקצועית ומתקדמת עבור טכנאים ונותני שירותים

[תכונות](#-תכונות) • [התקנה](#-התקנה) • [בנייה](#-בניית-apk) • [שימוש](#-שימוש)

</div>

---

## 📱 סקירה כללית

**Technician PRO** היא אפליקציית ניהול שירותים מלאה, מתקדמת ויוקרתית שנבנתה עם טכנולוגיות web מודרניות והומרה לאפליקציית Android native באמצעות Capacitor.

### ✨ תכונות עיקריות

#### 🏠 מסך הבית היוקרתי
- לוגו פטיש מעוצב עם אנימציות זהב
- רקע גרדיאנט עם אפקט רשת מתנועע
- אנימציות הופעה חלקות (fade-in and slide-up)
- תגי פיצ'רים עם אייקונים

#### 📋 ניהול שירותים מתקדם
- הוספת שירותים חדשים עם כל הפרטים
- עריכה ומחיקה של שירותים קיימים
- סימון שירותים כ"הושלמו"
- סינון ומיון שירותים
- תמיכה בשירותים דחופים

#### ✍️ חתימה דיגיטלית
- לוח חתימה אינטראקטיבי
- תמיכה במגע ועכבר
- שמירת חתימות לכל שירות
- ניקוי וחתימה מחדש

#### 📍 ניווט GPS
- ניווט ישיר לכתובת הלקוח
- אינטגרציה עם Google Maps
- פתיחה באפליקציית המפות

#### 📊 סטטיסטיקות מתקדמות
- סה"כ שירותים
- אחוז השלמה
- שירותים דחופים
- סה"כ הכנסות
- פירוט לפי סוג שירות

#### 💾 גיבוי ושחזור
- ייצוא כל הנתונים לקובץ JSON
- שמירת גרסה וזמן
- ייצוא דוחות טקסט
- ניקוי נתונים ישנים

#### 🎨 עיצוב מתקדם
- Dark Mode מלא
- תמיכה ב-RTL (עברית)
- אנימציות חלקות
- גרדיאנטים ומעברי צבע
- צללים ואפקטים תלת-ממדיים
- Responsive Design מלא

#### 🔔 חוויית משתמש
- Toast notifications
- Vibration feedback
- Loading states
- Empty states
- Error handling

---

## 🚀 התקנה

### דרישות מקדימות

1. **Node.js** (v16 ומעלה)
   ```bash
   # בדוק גרסה
   node -v
   ```

2. **Android Studio** (לבניית APK)
   - [הורד מכאן](https://developer.android.com/studio)
   - התקן Android SDK Platform 34
   - התקן Build Tools 34

3. **JDK 17** (או גבוה יותר)
   ```bash
   # בדוק גרסה
   java -version
   ```

### התקנת הפרויקט

```bash
# 1. Clone הפרויקט
git clone <repository-url>
cd tech-pro-rtl

# 2. התקן dependencies
npm install

# 3. Sync Capacitor
npx cap sync android
```

---

## 🔨 בניית APK

### דרך 1: Script אוטומטי (מומלץ!)

```bash
./build-apk.sh
```

הסקריפט יבצע אוטומטית:
- ✅ בדיקת דרישות מקדימות
- ✅ התקנת dependencies
- ✅ סנכרון Capacitor
- ✅ בניית APK
- ✅ הצגת מיקום הקובץ

### דרך 2: ידנית

```bash
# דרך Gradle
cd android
./gradlew assembleDebug

# או דרך npm script
npm run android:build
```

### מיקום ה-APK

```
android/app/build/outputs/apk/debug/app-debug.apk
```

---

## 📲 התקנה על הטלפון

### אפשרות 1: העברה ידנית
1. העבר את `app-debug.apk` לטלפון
2. פתח את הקובץ
3. אפשר "מקורות לא ידועים" אם נדרש
4. לחץ "התקן"

### אפשרות 2: דרך ADB
```bash
# וודא שהטלפון מחובר ו-USB debugging מופעל
adb devices

# התקן את האפליקציה
adb install android/app/build/outputs/apk/debug/app-debug.apk
```

### אפשרות 3: הרצה ישירה
```bash
npx cap run android
```

---

## 📖 שימוש

### הפעלה ראשונה

1. **מסך הבית**
   - לחץ על "התחל עכשיו"
   - תעבור לאפליקציה הראשית

2. **הוספת שירות**
   - מלא את הטופס בכרטיס "הוסף שירות חדש"
   - כולל: שם לקוח, סוג שירות, תיאור, מחיר, כתובת
   - סמן "דחוף" אם נדרש
   - לחץ "הוסף שירות"

3. **ניהול שירותים**
   - צפה ברשימת השירותים
   - לחץ "סמן כהושלם" כשמסיים
   - לחץ "חתימה" לחתימה דיגיטלית
   - לחץ "נווט" לפתיחת ניווט GPS
   - לחץ "מחק" למחיקת שירות

4. **סטטיסטיקות**
   - עבור ללשונית "סטטיסטיקות"
   - צפה בנתונים מסכמים
   - ראה פירוט לפי סוג שירות

5. **ניהול**
   - לחץ על ⚙️ בכותרת
   - ייצא גיבוי / דוח
   - נקה שירותים שהושלמו
   - מחק את כל הנתונים (זהירות!)

6. **Dark Mode**
   - לחץ על 🌙 בכותרת
   - המעבר אוטומטי

---

## 🛠️ מבנה הפרויקט

```
tech-pro-rtl/
├── www/
│   └── index.html              # האפליקציה המלאה (HTML/CSS/JS)
├── android/                    # פרויקט Android Native
│   ├── app/
│   │   ├── src/
│   │   │   └── main/
│   │   │       ├── AndroidManifest.xml
│   │   │       ├── assets/
│   │   │       │   └── public/      # Web assets
│   │   │       └── res/
│   │   │           └── values/
│   │   │               └── strings.xml
│   │   └── build.gradle
│   └── build.gradle
├── capacitor.config.json       # Capacitor config
├── package.json                # npm dependencies
├── build-apk.sh               # Build script
├── BUILD_INSTRUCTIONS.md       # הוראות בניה מפורטות
├── .gitignore
└── README.md                   # הקובץ הזה
```

---

## ⚙️ קונפיגורציה

### App Details
- **App Name:** Technician PRO
- **Package ID:** com.techprortl.app
- **Version:** 2.0.0

### הרשאות Android
```xml
<uses-permission android:name="android.permission.INTERNET" />
<uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
<uses-permission android:name="android.permission.VIBRATE" />
```

### Capacitor Config
```json
{
  "appId": "com.techprortl.app",
  "appName": "Technician PRO",
  "webDir": "www",
  "android": {
    "allowMixedContent": true,
    "captureInput": true,
    "webContentsDebuggingEnabled": true
  }
}
```

---

## 🔧 פתרון בעיות

### Build נכשל

**בעיה:** `Could not resolve dependencies`
```bash
# פתרון
cd android
./gradlew clean
./gradlew assembleDebug --stacktrace
```

**בעיה:** `SDK not found`
- פתח Android Studio
- SDK Manager → התקן Platform 34 ו-Build Tools 34

**בעיה:** `JDK version mismatch`
```bash
# בדוק גרסה
java -version
# צריך JDK 17+
```

### האפליקציה קורסת

1. בדוק Android Logcat:
   ```bash
   adb logcat | grep -i "techprortl"
   ```

2. הפעל במצב debug:
   ```bash
   npx cap open android
   ```
   ואז Run מ-Android Studio

### בעיות RTL
- ה-RTL כבר מוגדר ב-HTML (`dir="rtl"`)
- Android Manifest: `android:supportsRtl="true"`

---

## 📊 ביצועים

### גודל APK
- **Debug APK:** ~7-10 MB
- **Release APK:** ~3-5 MB (minified)

### זמני בנייה
- **בנייה ראשונה:** 2-5 דקות
- **בניות נוספות:** 30-60 שניות

### דרישות מערכת
- **Android:** 7.0 (API 24) ומעלה
- **זיכרון:** ~50MB RAM
- **אחסון:** ~10MB

---

## 🎨 טכנולוגיות

### Frontend
- HTML5
- CSS3 (Custom Properties, Animations, Gradients)
- Vanilla JavaScript (ES6+)

### Mobile
- Capacitor 8
- Android SDK 34
- Gradle 8.14.3

### Tools
- Node.js
- npm
- Android Studio

---

## 📝 רישיון

MIT License - ראה קובץ LICENSE

---

## 👨‍💻 מפתח

**אבי ברוך** - אפליקציית ניהול שירותים

Built with ❤️ using Capacitor & Claude AI

---

## 📞 תמיכה

יש בעיה? שאלה?
1. בדוק את [BUILD_INSTRUCTIONS.md](BUILD_INSTRUCTIONS.md)
2. בדוק את הלוגים: `adb logcat`
3. פתח issue ב-GitHub

---

## 🎯 תכונות עתידיות (Roadmap)

- [ ] אינטגרציה עם Google Calendar
- [ ] התראות Push
- [ ] סנכרון בענן
- [ ] אפליקציית iOS
- [ ] דוחות PDF מתקדמים
- [ ] ניהול מלאי חלקים
- [ ] מערכת לקוחות מתקדמת

---

<div align="center">

**🌟 אם האפליקציה עזרה לך, תן לנו כוכב! 🌟**

Made with 🔨 for technicians by technicians

</div>