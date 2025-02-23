import 'package:auto_route/annotations.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        child: Hero(
                          tag: 'profilepic',
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
            InkWell(
              onTap: () {},
              child: CircleAvatar(
                backgroundColor: context.primaryColorLight,
                radius: 19.r,
                child: Icon(
                  IconsaxOutline.search_normal_1,
                  color: context.white,
                  size: 18.r,
                ),
              ),
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
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 12.r,
                    children: [
                      for (final i in [1, 2, 8, 3, 1]) JobCard()
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
