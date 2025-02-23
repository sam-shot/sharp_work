import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sharp_work/ui/ui.dart';


class JobCard extends StatelessWidget {
  const JobCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.lightGrey,
        borderRadius: SharpBorderRadius.radius12,
      ),
      width: 200.r,
      padding: SharpPadding.padding16,
      child: Column(
        children: [
          SharpSpacing.normal,
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: context.white,
                  borderRadius: SharpBorderRadius.radius12,
                ),
                padding: SharpPadding.padding16,
                child: Column(
                  children: [
                    SharpSpacing.normal,
                    Text(
                      'Product Designer',
                      style: context.labelMedium.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SharpSpacing.medium,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home_work_outlined,
                          color: context.grey,
                          size: SharpDimensions.size16,
                        ),
                        SharpSpacing.small,
                        Text(
                          'Remote',
                          style: context.labelSmall.copyWith(
                            color: context.grey,
                          ),
                        ),
                      ],
                    ),
                    SharpSpacing.medium,
                    Text(
                      'We are looking for a dynamic product designer',
                      style: context.labelSmall.copyWith(
                        color: context.grey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: -20,
                child: CircleAvatar(
                  radius: 24.r,
                  backgroundColor: context.lightGrey,
                  child: CircleAvatar(
                    radius: SharpDimensions.size20,
                    backgroundColor: context.white,
                    child: Icon(
                      Icons.android_rounded,
                    ),
                  ),
                ),
              )
            ],
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
    );
  }
}
