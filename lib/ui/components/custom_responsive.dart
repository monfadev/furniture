import 'package:flutter/material.dart';

class CustomResponsive extends StatelessWidget {
  final Widget desktop;
  final Widget tablet;
  final Widget mobile;
  const CustomResponsive({required this.desktop, required this.tablet, required this.mobile, Key? key}) : super(key: key);

  static bool isDesktop(BuildContext context) => MediaQuery.of(context).size.width >= 1100;
  static bool isTablet(BuildContext context) => MediaQuery.of(context).size.width >= 800 && MediaQuery.of(context).size.width < 1100;
  static bool isMobile(BuildContext context) => MediaQuery.of(context).size.width < 650;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= 1100) {
        return desktop;
      } else if (constraints.maxWidth >= 800 && constraints.maxWidth < 1100.0) {
        return tablet;
      } else {
        return mobile;
      }
    });
  }
}
