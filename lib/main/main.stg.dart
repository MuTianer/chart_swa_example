import 'package:flutter/cupertino.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

import 'my_app.dart';

void main() {
  FlavorConfig(
    name: "stg",
    color: CupertinoColors.systemOrange,
    location: BannerLocation.topStart,
    variables: {
      "counter": 5,
      "baseUrl": "https://www.stg.com",
    },
  );
  runApp(const MyApp());
}
