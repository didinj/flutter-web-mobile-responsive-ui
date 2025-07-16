import 'package:flutter/material.dart';
import '../utils/responsive.dart';
import '../widgets/app_scaffold.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      screenType: ScreenType.desktop,
      body: GridView.count(
        crossAxisCount: 3,
        padding: const EdgeInsets.all(24),
        crossAxisSpacing: 24,
        mainAxisSpacing: 24,
        children: List.generate(
          9,
              (index) => Card(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Text('Desktop Item ${index + 1}'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
