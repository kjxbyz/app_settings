# app_settings_plus

[![pub package](https://img.shields.io/pub/v/app_settings_plus.svg)](https://pub.dartlang.org/packages/app_settings_plus)

A Flutter plugin for opening iOS and Android phone settings from an app.

## Features

- Supports **Swift Package Manager (SPM)** for iOS integration.
- Opens various settings pages (e.g., location, Wi-Fi, etc.) for both Android and iOS.

## Installation

First, add `app_settings_plus` as a [dependency in your pubspec.yaml file](https://pub.dev/packages/app_settings_plus).

```dart
flutter pub add app_settings_plus
```

Next, import 'app_settings_plus.dart' into your Dart code.

```dart
import 'package:app_settings_plus/app_settings_plus.dart';
```

### iOS

***TIP: If using Objective-C for iOS in your project, you will need to add `use_frameworks!` to your `Runner project podfile` in order to use this Swift plugin:***

```pod
target 'Runner' do
  use_frameworks!
```

If you prefer using **Swift Package Manager (SPM)**, make sure to enable swift support in your project.
See also [Flutter SPM integration](https://docs.flutter.dev/packages-and-plugins/swift-package-manager/for-app-developers).

```sh
  flutter config --enable-swift-package-manager 
```



## Usage

Open the settings of the application using `AppSettingsPlus.openAppSettings()`.
By default, `AppSettingsType.settings` is used as the type, which opens the general application settings.
If the given type is not supported on the current platform, the general settings are opened instead.

**Android** If `asAnotherTask` is set to true, the settings page is opened in a different Activity.

```dart
Widget build(BuildContext context) {
  return ElevatedButton(
    onPressed: () => AppSettingsPlus.openAppSettings(type: AppSettingsType.location),
    child: const Text('Open Location Settings'),
  );
}
```

### Android Q Settings Panels

To open a Settings Panel on Android Q and higher,
call `AppSettingsPlus.openAppSettingsPanel()` with a given type.

```dart
Widget build(BuildContext context) {
  return ElevatedButton(
    onPressed: () => AppSettingsPlus.openAppSettingsPanel(AppSettingsPanelType.volume),
    child: const Text('Open Volume Settings Panel'),
  );
}
```

Settings panels are not supported on other platforms.
