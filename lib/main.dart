import 'package:chart_swa_example/core/environments/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'gen/i18n/translations.g.dart';
import 'main/my_app.dart';

/// This is the entry point for the Flutter program to start.
/// Plugin initialization should be completed here.
void main() {
  // Waiting for Flutter initialization to complete
  // This should happen before the initialization of other plugins
  // If Flutter is not initialized, attaching plugins to it may result in many location errors.
  WidgetsFlutterBinding.ensureInitialized();

  // Set the local language for the i18n plugin 'slang.'
  // The local language will directly affect the child components.
  LocaleSettings.setLocale(AppLocale.ja);

  // Read the initial parameters from environment variables
  const String flavorType = String.fromEnvironment('Flavor');

  // Set environment variables based on the environment parameter.
  //
  // The environment parameter includes, but is not limited to:
  // - Top-left corner label for the header component: To indicate the current running environment type.
  // - Base API URL: The base URL for HTTP requests.
  // - And many other environment variables that vary due to environmental differences.
  loadFlavorConfig(flavorType);

  runApp(
    // i18n
    TranslationProvider(
      // Top-left corner label
      child: const FlavorBanner(
        // riverpod provider
        child: ProviderScope(
          // entry point
          child: MyApp(),
        ),
      ),
    ),
  );
}
