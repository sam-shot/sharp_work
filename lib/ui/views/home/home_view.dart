import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sharp_work/ui/ui.dart';
import 'package:sharp_work/ui/views/home/home_viewmodel.dart';

part 'widgets/first_appbar.dart';
part 'widgets/second_appbar.dart';
part 'widgets/third_appbar.dart';

@RoutePage()
class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(homeProvider);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          FirstAppBar(),
          SecondAppBar(),
          ThirdAppBar(),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                height: 1500,
                color: context.yellow,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
