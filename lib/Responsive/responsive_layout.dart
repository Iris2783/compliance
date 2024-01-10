import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget desktopScaffold;

  // ignore: use_key_in_widget_constructors
  const ResponsiveLayout({
    required this.mobileScaffold,
    required this.tabletScaffold,
    required this.desktopScaffold,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 800) {
          return mobileScaffold; //4.7インチで見ること前提
        } else if (constraints.maxWidth < 1600) {
          return tabletScaffold;
        } else {
          return desktopScaffold;
        }
      },
    );
  }
}
