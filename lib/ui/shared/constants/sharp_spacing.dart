import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class SharpSpacing {
  SharpSpacing._();

  static Gap get tiny => Gap(2.r);
  static Gap get small => Gap(4.r);
  static Gap get medium => Gap(8.r);
  static Gap get normal => Gap(16.r);
  static Gap get large => Gap(24.r);
  static Gap get xLarge => Gap(32.r);
  static Gap get xxLarge => Gap(48.r);
  static Gap get xxxLarge => Gap(64.r);
}
