import 'package:flutter/cupertino.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    int counter = FlavorConfig.instance.variables["counter"] as int;
    String baseUrl = FlavorConfig.instance.variables["baseUrl"] as String;
    return FlavorBanner(
      color: CupertinoColors.systemBlue,
      location: BannerLocation.topStart,
      child: CupertinoApp(
        title: 'Flutter Demo',
        home: SafeArea(
            child: CupertinoPageScaffold(
          navigationBar: const CupertinoNavigationBar(
            middle: Text('Title'),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Count: $counter',
                  style: const TextStyle(
                    color: CupertinoColors.white,
                  ),
                ),
                Text(
                  'BaseUrl: $baseUrl',
                  style: const TextStyle(
                    color: CupertinoColors.white,
                  ),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
