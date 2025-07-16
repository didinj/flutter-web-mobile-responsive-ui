import 'package:flutter/material.dart';
import '../utils/responsive.dart';
import '../widgets/app_scaffold.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      screenType: ScreenType.mobile,
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: List.generate(
          5,
              (index) => Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text('Mobile Item ${index + 1}'),
            ),
          ),
        ),
      ),
    );
  }
}
