import 'package:chart_swa_example/core/environments/index.dart';
import 'package:flutter/cupertino.dart';

import '../gen/i18n/translations.g.dart';

class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);
    int counter = 0;
    String baseUrl = flavorConfig.apiBaseUrl;
    return SafeArea(
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text(t.login.button_go_login),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Count: $counter',
                style: const TextStyle(
                  color: CupertinoColors.black,
                ),
              ),
              Text(
                'BaseUrl: $baseUrl',
                style: const TextStyle(
                  color: CupertinoColors.black,
                ),
              ),
              CupertinoButton(
                child: Text('En'),
                onPressed: () {
                  // String storedLocale = loadFromStorage(); // your logic here
                  LocaleSettings.setLocaleRaw('en');
                },
              ),
              CupertinoButton(
                child: Text('Ja'),
                onPressed: () {
                  // String storedLocale = loadFromStorage(); // your logic here
                  LocaleSettings.setLocaleRaw('ja');
                },
              ),
              CupertinoTextField(
                textInputAction: TextInputAction.newline,
              )
            ],
          ),
        ),
      ),
    );
  }
}
