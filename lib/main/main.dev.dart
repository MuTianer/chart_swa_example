import 'package:flutter/cupertino.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

import 'my_app.dart';

void main() {
  FlavorConfig(
    name: "dev",
    color: CupertinoColors.systemBlue,
    location: BannerLocation.topStart,
    variables: {
      "counter": 5,
      "baseUrl": "https://www.dev.com",
    },
  );
  runApp(const MyApp());
}
