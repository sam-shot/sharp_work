import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sharp_work/ui/ui.dart';
import 'package:sharp_work/ui/views/home/home_viewmodel.dart';

part 'widgets/home_header.dart';

@RoutePage()
class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(homeProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.primaryColor,
        automaticallyImplyLeading: false,
        leadingWidth: 0,
        title: Row(
          children: [
            TweenAnimationBuilder(
              duration: const Duration(milliseconds: 1200),
              curve: Curves.easeInExpo,
              tween: Tween(begin: 2.5, end: 1.0),
              builder: (context, value, child) {
                return Row(
                  children: [
                    Transform.translate(
                      offset: Offset(50 * (-(value) + 1), 0),
                      child: CircleAvatar(
                        radius: SharpDimensions.size20,
                        backgroundColor: context.white,
                        child: Padding(
                          padding: SharpPadding.padding2,
                          child: Container(
                            decoration: BoxDecoration(
                              color: context.teal,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SharpSpacing.medium,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Transform.scale(
                          alignment: Alignment.topCenter,
                          scale: value,
                          child: Text(
                            'Hello',
                            style: context.labelSmall.copyWith(
                              color: context.white,
                            ),
                          ),
                        ),
                        Transform.scale(
                          alignment: Alignment.bottomLeft,
                          scale: 2 * (2.5 - value) / 3,
                          child: Text(
                            'Samuel Ademujimi',
                            style: context.titleSmall.copyWith(
                              color: context.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeHeader(model: model),
          SharpSpacing.normal,
          Padding(
            padding: SharpPadding.horizontalPadding20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Best Matches',
                      style: context.titleSmall,
                    ),
                    Text(
                      'See All',
                      style: context.labelSmall.copyWith(
                        color: context.grey,
                      ),
                    ),
                  ],
                ),
                SharpSpacing.normal,
                Container(
                  decoration: BoxDecoration(
                    color: context.lightGrey,
                    borderRadius: SharpBorderRadius.radius12,
                  ),
                  width: 180,
                  padding: SharpPadding.padding16,
                  child: Column(
                    children: [
                      Text(
                        'Product Designer',
                        style: context.labelMedium.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SharpSpacing.medium,
                      Text(
                        'We are looking for a dynamic product designer',
                        style: context.labelSmall.copyWith(
                          color: context.grey,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SharpSpacing.normal,
                      PrimaryButton(
                        label: 'Apply',
                        borderRadius: SharpBorderRadius.radius32,
                        height: 40,
                        onTap: () {},
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
