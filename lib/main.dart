import 'package:compliance/Responsive/responsive_layout.dart';
import 'package:compliance/TopPage/desktop_toppage.dart';
import 'package:compliance/TopPage/mobile_toppage.dart';
import 'package:compliance/TopPage/tablet_toppage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  GoogleFonts.config.allowRuntimeFetching = false; //フォントの事前読み込み
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.mPlusRounded1cTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScaffold: MobileTopPage(),
        tabletScaffold: TabletTopPage(),
        desktopScaffold: DesktopTopPage(),
      ),
    );
  }
}
