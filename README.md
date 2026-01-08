# Tech Pro RTL

A Flutter application showcasing tech professionals with full Right-to-Left (RTL) language support.

## Features

- **RTL Language Support**: Seamlessly switch between LTR (Left-to-Right) and RTL (Right-to-Left) text directions
- **Multi-language Content**: Professional profiles displayed in both English and Arabic
- **Responsive Design**: Clean, Material Design 3 interface
- **Dynamic Direction Toggle**: Easy switching between text directions with a single button

## Supported Languages

- English (LTR)
- Arabic (RTL)
- Hebrew (RTL)
- Persian (RTL)
- Urdu (RTL)

## Getting Started

### Prerequisites

- Flutter SDK (>= 3.0.0)
- Dart SDK (>= 3.0.0)

### Installation

1. Clone the repository:
```bash
git clone https://github.com/avib1009/tech-pro-rtl.git
cd tech-pro-rtl
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

## Usage

The app displays a list of tech professionals with their roles and expertise. Click the direction toggle button in the app bar to switch between LTR and RTL layouts, which will also switch the content language.

## Project Structure

```
tech-pro-rtl/
├── lib/
│   └── main.dart          # Main application with RTL support
├── pubspec.yaml           # Project dependencies
└── README.md             # Project documentation
```

## Built With

- [Flutter](https://flutter.dev/) - UI framework
- [flutter_localizations](https://flutter.dev/docs/development/accessibility-and-localization/internationalization) - Localization support

## License

This project is open source and available for educational purposes.
