import 'package:chart_swa_example/core/environments/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'core/i18n/translations.g.dart';
import 'main/my_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  LocaleSettings.setLocale(AppLocale.ja);
  const String flavorType = String.fromEnvironment('Flavor');
  loadFlavorConfig(flavorType);
  runApp(
    TranslationProvider(
      child: const FlavorBanner(
        child: ProviderScope(
          child: MyApp(),
        ),
      ),
    ),
  );
}
