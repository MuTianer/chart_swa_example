import 'package:chart_swa_example/core/environments/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'main/my_app.dart';

void main() {
  const String flavorType = String.fromEnvironment('Flavor');
  loadFlavorConfig(flavorType);
  runApp(
    const FlavorBanner(
      child: MyApp(),
    ),
  );
}
