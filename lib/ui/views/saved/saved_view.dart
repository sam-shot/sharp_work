import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sharp_work/ui/ui.dart';

@RoutePage()
class SavedView extends StatelessWidget {
  const SavedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.white,
        title: Text(
          'Saved Jobs',
          style: context.titleSmall,
        ),
      ),
      body: Column(
        children: [
          
        ],
      ),
    );
  }
}
