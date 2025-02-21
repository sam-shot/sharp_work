part of '../home_view.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
    required this.model,
  });

  final HomeViewModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.primaryColor,
      ),
      width: double.infinity,
      padding: SharpPadding.horizontalPadding20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SharpSpacing.large,
          Text(
            'Find your Next\nDream Job',
            style: context.headlineLarge.copyWith(
              fontWeight: FontWeight.w500,
              color: context.yellow,
            ),
          ),
          SharpSpacing.normal,
          Text(
            'Choose a Job Type',
            style: context.bodyMedium.copyWith(
              color: context.white,
              // fontSize: 10.r,
            ),
          ),
          SharpSpacing.normal,
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
                    padding: SharpPadding.padding10,
                    margin: EdgeInsets.only(
                      right: SharpDimensions.size10,
                    ),
                    child: Text(
                      type,
                      style: context.labelSmall.copyWith(
                        color: context.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
              ],
            ),
          ),
          SharpSpacing.large,
        ],
      ),
    );
  }
}
