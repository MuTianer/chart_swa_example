import 'package:flutter/cupertino.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

import 'my_app.dart';

void main() {
  FlavorConfig(
    name: "prod",
    color: CupertinoColors.systemPink,
    location: BannerLocation.topStart,
    variables: {
      "counter": 5,
      "baseUrl": "https://www.prod.com",
    },
  );
  runApp(const MyApp());
}
