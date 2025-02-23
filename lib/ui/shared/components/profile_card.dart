import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sharp_work/ui/ui.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.lightGrey,
        borderRadius: SharpBorderRadius.radius10,
      ),
      width: double.infinity,
      padding: SharpPadding.padding16,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      IconsaxOutline.edit_2,
                      color: context.primaryColor,
                      size: 16.r,
                    ),
                    SharpSpacing.small,
                    Text(
                      'Edit',
                      style: context.bodyMedium.copyWith(
                        color: context.primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              SharpSpacing.normal,
              Text(
                'Samuel Ademujimi',
                style: context.titleMedium,
              ),
              SharpSpacing.medium,
              Text(
                'Software Engineer (Flutter) ',
                style: context.bodyMedium.copyWith(
                  color: context.black.withAlpha(150),
                ),
              ),
              Text(
                'samshotmedia01@gmail.com',
                style: context.bodyMedium.copyWith(
                  color: context.black.withAlpha(150),
                ),
              ),
            ],
          ),
          Positioned(
            top: -52.r,
            child: CircleAvatar(
              radius: 36.r,
              backgroundColor: context.white,
              child: Hero(
                tag: 'profilepic',
                child: CircleAvatar(
                  radius: SharpDimensions.size32,
                  backgroundColor: context.lightGrey,
                  child: Icon(
                    Icons.android_rounded,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
