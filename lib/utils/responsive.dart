enum ScreenType { mobile, tablet, desktop }

class Responsive {
  static ScreenType getScreenType(double width) {
    if (width >= 1024) return ScreenType.desktop;
    if (width >= 600) return ScreenType.tablet;
    return ScreenType.mobile;
  }
}
