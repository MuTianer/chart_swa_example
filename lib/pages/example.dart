import 'package:chart_swa_example/core/environments/index.dart';
import 'package:flutter/cupertino.dart';

class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    int counter = 0;
    String baseUrl = flavorConfig.apiBaseUrl;
    return SafeArea(
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
      ),
    );
  }
}
