import 'package:chart_swa_example/core/environments/index.dart';
import 'package:chart_swa_example/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';

import '../gen/i18n/translations.g.dart';

class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);
    int counter = 0;
    String baseUrl = flavorConfig.apiBaseUrl;
    return CupertinoPageScaffold(
      child: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: Image.asset(Assets.images.loginCard.path),
            ),
            Expanded(
              flex: 2,
              child: RichText(
                text: TextSpan(
                  text: t.welcome.description1,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: CupertinoColors.white,
                    textBaseline: TextBaseline.ideographic
                  ),
                  children: [
                    TextSpan(
                      text: t.welcome.description2,
                      style: const TextStyle(
                        color: Color(0XFF456EFE),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Text('Swiper'),
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
