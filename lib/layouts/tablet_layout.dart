import 'package:flutter/material.dart';
import '../utils/responsive.dart';
import '../widgets/app_scaffold.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      screenType: ScreenType.tablet,
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16),
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: List.generate(
          6,
              (index) => Card(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text('Tablet Item ${index + 1}'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
