import 'package:chart_swa_example/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:transparent_image/transparent_image.dart';

import '../gen/i18n/translations.g.dart';

class Example extends HookConsumerWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useAnimationController(
      duration: const Duration(milliseconds: 1000),
    );

    controller.animateTo(1.0);

    final t = Translations.of(context);
    return CupertinoPageScaffold(
      child: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: FadeTransition(
                opacity: CurvedAnimation(
                  parent: controller,
                  curve: Curves.easeIn,
                ),
                child: Image(
                  image: Assets.images.loginCard.provider(),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: FadeTransition(
                opacity: CurvedAnimation(
                  parent: controller,
                  curve: Curves.easeIn,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      t.welcome.description1,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: CupertinoColors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      t.welcome.description2,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: Color(0XFF456EFE),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Wrap(),
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
