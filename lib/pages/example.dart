import 'package:chart_swa_example/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../core/widgets/swiper.dart';
import '../gen/i18n/translations.g.dart';

class Example extends HookConsumerWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useAnimationController(
      duration: const Duration(milliseconds: 300),
    );

    controller.animateTo(1.0);

    final t = Translations.of(context);
    return CupertinoPageScaffold(
      backgroundColor: const Color(0xff23303B),
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
                child: SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0, -1),
                    end: const Offset(0, 0),
                  ).animate(controller),
                  child: Image(
                    image: Assets.images.loginCard.provider(),
                  ),
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
                child: SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(1, 0),
                    end: const Offset(0, 0),
                  ).animate(controller),
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
                        height: 8,
                      ),
                      Text(
                        t.welcome.description2,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                          color: Color(0XFF456EFE),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        t.welcome.description3,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Color(0XFF8E949A),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: SizedBox.expand(
                child: Swipe(
                  child: Text('Swiper'),
                  onSwipeRight: () {
                    print('onSwipeRight');
                  },
                ),
              ),
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
