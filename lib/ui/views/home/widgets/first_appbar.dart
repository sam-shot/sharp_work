part of '../home_view.dart';

class FirstAppBar extends StatelessWidget {
  const FirstAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: context.primaryColor,
      automaticallyImplyLeading: false,
      pinned: true,
      floating: false,
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
      
    );
  }
}
