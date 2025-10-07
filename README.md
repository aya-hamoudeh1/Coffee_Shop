# Coffee Shop ☕️

A Flutter starter app for a Coffee Shop — includes map support, SVG rendering, custom fonts, and device preview for development.

## Overview
This project is a multi-platform Flutter scaffold that demonstrates:
- Interactive maps (flutter_map + latlong2) 🗺️
- SVG asset rendering (flutter_svg) 🎨
- Opening external links (url_launcher) 🔗
- Device preview for layout testing (device_preview) 📱
- Custom Sora font family for polished UI ✨

## Features
- Display shop locations on a map
- Support for PNG and SVG assets
- Custom typography with Sora font family
- Configured analysis and linting

## Key Dependencies
(Defined in pubspec.yaml)
- flutter (SDK constraint: ^3.8.1)
- cupertino_icons: ^1.0.8
- flutter_svg: ^2.2.1
- flutter_map: ^8.2.2
- latlong2: ^0.9.1
- url_launcher: ^6.3.2
- device_preview: ^1.3.1

Dev dependencies:
- flutter_test
- flutter_lints

## Assets & Fonts
Registered in pubspec.yaml:
- Assets:
    - assets/images/png/
    - assets/images/svg/
- Fonts (Sora):
    - assets/fonts/Sora/static/Sora-Thin.ttf
    - assets/fonts/Sora/static/Sora-ExtraLight.ttf
    - assets/fonts/Sora/static/Sora-Light.ttf
    - assets/fonts/Sora/static/Sora-Regular.ttf
    - assets/fonts/Sora/static/Sora-Medium.ttf
    - assets/fonts/Sora/static/Sora-SemiBold.ttf
    - assets/fonts/Sora/static/Sora-Bold.ttf
    - assets/fonts/Sora/static/Sora-ExtraBold.ttf

Place your image and SVG files under the assets directories and include the Sora font files at the listed path.

## Prerequisites
- Flutter SDK matching the pubspec constraint (>= 3.8.1)
- Platform tools:
    - Android Studio / Android SDK for Android
    - Xcode for iOS
    - Chrome for web testing (optional)

## Getting Started (run these from the project root)
Install dependencies:
```bash
flutter pub get
```

Run the app:
```bash
flutter run
# or target a specific device:
flutter run -d chrome
```

Build release artifacts:
```bash
# Android APK
flutter build apk --release

# iOS (prepare for Xcode)
flutter build ios --release

# Web
flutter build web --release
```

## Testing & Analysis
Run tests:
```bash
flutter test
```

Static analysis:
```bash
flutter analyze
```

## Project Structure
- android/, ios/, web/, macos/, windows/, linux/ — platform folders
- assets/ — images (png/svg) and fonts
- lib/ — app source code
- test/ — tests
- pubspec.yaml, pubspec.lock — package configuration
- analysis_options.yaml — lint rules and analyzer settings

## Contributing 🤝
Contributions are welcome:
1. Fork the repository
2. Create a feature branch (e.g., feature/my-feature)
3. Add code and tests
4. Open a pull request with a clear description

## License
No LICENSE file is included. Add a LICENSE file if you intend to publish this project under an open-source license.

## Author
aya-hamoudeh1 (GitHub)

## What's next — short checklist ✅
- Add app screenshots and example data under assets/ for immediate demoing.
- Implement or document the main screens in lib/ (Home, Map, Details).
- Add a LICENSE file if you want to open-source the repo.
- Optional: enable/disable device_preview in main.dart depending on environment.
