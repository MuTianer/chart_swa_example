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
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0XFF23303B),
          image: DecorationImage(
            image: Assets.images.loginCard.provider(),
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}
