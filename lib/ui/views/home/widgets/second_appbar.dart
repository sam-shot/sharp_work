part of '../home_view.dart';

class SecondAppBar extends StatelessWidget {
  const SecondAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: context.primaryColor,
      automaticallyImplyLeading: false,
      floating: false,
      expandedHeight: SharpDimensions.size120,
      elevation: 0,
      flexibleSpace: FlexibleSpaceBar(
        title: Padding(
          padding: SharpPadding.horizontalPadding16,
          child: Text(
            'Find your Next\nDream Job',
            style: context.titleLarge.copyWith(
              fontWeight: FontWeight.w500,
              color: context.yellow,
            ),
          ),
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(-8),
        child: SizedBox(),
      ),
    );
  }
}
