import 'package:flutter/material.dart';
import '../utils/responsive.dart';
import '../layouts/mobile_layout.dart';
import '../layouts/tablet_layout.dart';
import '../layouts/desktop_layout.dart';

class ResponsiveHomePage extends StatelessWidget {
  const ResponsiveHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenType = Responsive.getScreenType(constraints.maxWidth);

        switch (screenType) {
          case ScreenType.mobile:
            return MobileLayout();
          case ScreenType.tablet:
            return TabletLayout();
          case ScreenType.desktop:
            return DesktopLayout();
        }
      },
    );
  }
}
