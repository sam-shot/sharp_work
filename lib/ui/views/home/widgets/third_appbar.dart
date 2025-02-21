part of '../home_view.dart';

class ThirdAppBar extends StatelessWidget {
  const ThirdAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: context.primaryColor,
      automaticallyImplyLeading: false,
      pinned: true,
      elevation: 0,
      expandedHeight: SharpDimensions.size100,
      collapsedHeight: SharpDimensions.size100,
      leadingWidth: 0,
      flexibleSpace: Consumer(
        builder: (_, WidgetRef ref, __) {
          final model = ref.watch(homeProvider);
          return FlexibleSpaceBar(
            expandedTitleScale: 1,
            title: Padding(
              padding: SharpPadding.horizontalPadding16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Choose a Job Type',
                    style: context.bodyMedium.copyWith(
                      color: context.white,
                      // fontSize: 10.r,
                    ),
                  ),
                  SharpSpacing.medium,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (final type in model.jobTypes)
                          Container(
                            decoration: BoxDecoration(
                              color: context.primaryColorLight,
                              borderRadius: SharpBorderRadius.radius32,
                            ),
                            padding: SharpPadding.padding8,
                            margin: EdgeInsets.only(
                              right: SharpDimensions.size10,
                            ),
                            child: Text(
                              type,
                              style: context.labelMedium.copyWith(
                                color: context.white,
                                // fontSize: 9.r,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  SharpSpacing.medium,
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
