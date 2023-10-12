# chart_swa_example

  A Flutter development framework intended for practice, so during the encapsulation process, will be more progressive, utilizing more innovative technologies and design patterns.

# Plugin

## Http
- [Dio](<https://pub.dev/packages/dio>)

    A powerful HTTP networking package for Dart/Flutter, supports Globalconfiguration, Interceptors, FormData, Request cancellation, File uploading/downloading, Timeout, Custom adapters, Transformers, etc.

- [talker_dio_logger](https://pub.dev/packages/talker_dio_logger)

  Lightweight and customizable dio http client logger on talker base.

## State Management
- [Freezed](https://pub.dev/packages/freezed)

  yet another code generator for data-classes/unions/pattern-matching/cloning.

- [Riverpod](https://pub.dev/packages/riverpod)

  A state-management library

- [Flutter Hooks](https://pub.dev/packages/flutter_hooks)

  A Flutter implementation of React hooks

## Route
- [go_router](https://pub.dev/packages/go_router)

  A declarative routing package for Flutter that uses the Router API to provide a convenient, url-based API for navigating between different screens. You can define URL patterns, navigate using a URL, handle deep links, and a number of other navigation-related scenarios.

## i18n
- [slang](https://pub.dev/packages/slang)

  * Type-safe i18n solution using JSON, YAML or CSV files.
  * The official successor of fast_i18n.

## Splash
- [flutter_native_splash](https://pub.dev/packages/flutter_native_splash)

  This package automatically generates iOS, Android, and Web-native code for customizing this native splash screen background color and splash image. Supports dark mode, full screen, and platform-specific options.

## Loading
- [flutter_easyloading](https://pub.dev/packages/flutter_easyloading)

## Resource Management
- [flutter_gen_runner](https://pub.dev/packages/flutter_gen_runner)

  The Flutter code generator for your assets, fonts, colors, … — Get rid of all String-based APIs.
  Inspired by SwiftGen.

## App icon generator
- [flutter_launcher_icons](https://pub.dev/packages/flutter_launcher_icons)

  A command-line tool which simplifies the task of updating your Flutter app's launcher icon. Fully flexible, allowing you to choose what platform you wish to update the launcher icon for and if you want, the option to keep your old launcher icon in case you want to revert back sometime in the future.

## UI Widget
- [adaptive_dialog](https://pub.dev/packages/adaptive_dialog)

  Show alert dialog or modal action sheet adaptively according to platform.

## Keyboard Controller
- [flutter_keyboard_visibility](https://pub.dev/packages/flutter_keyboard_visibility)

  React to keyboard visibility changes.
## Env Management
- [flutter_flavor](https://pub.dev/packages/flutter_flavor)

  Flavors helps us to create builds for different instances of our app. For example, we can create a flavor for development, a flavor for production and another flavor for a demo of the app. In this way we can create different flavors, and thus have different instances of our apps before publishing it on the App Store and Google Play.

## Generate Tools
- [build_runner](https://pub.dev/packages/build_runner)

  The build_runner package provides a concrete way of generating files using Dart code. Files are always generated directly on disk, and rebuilds are incremental - inspired by tools such as Bazel.


# Getting Started

1. set up the Flutter environment variables.
2. git clone project
3. In the project's root directory:
    * `CMD` run `flutter pub get`
4. flutter_gen_runner
    * `CMD` run `flutter packages dart run build_runner build`
5. freezed/riverpod/slang generator
    * `CMD` run `flutter pub run build_runner build`
6. build_runner watch
    * `CMD` run `dart run build_runner watch -d`
    > build_runner watch can maintain a real-time generation state for freezed/riverpod/slang generators
7. use `F5` run project
