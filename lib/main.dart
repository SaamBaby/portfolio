import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web/pages/Home.dart';
import 'package:portfolio_web/utils/constants.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Portfolio',
      debugShowCheckedModeBanner: false,
      darkTheme: Theme.of(context).copyWith(
          platform: TargetPlatform.android,
          scaffoldBackgroundColor: kBackgroundColor,
          primaryColor: kPrimaryColor,
          canvasColor: kBackgroundColor,
          textTheme:GoogleFonts.varelaRoundTextTheme()
      ),
      builder: (context, widget)=> ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(context, widget),
          defaultScale:  true,
          breakpoints:[
            ResponsiveBreakpoint.resize(450,name: MOBILE),
            ResponsiveBreakpoint.resize(800,name: TABLET),
            ResponsiveBreakpoint.resize(1000,name: TABLET),
            ResponsiveBreakpoint.resize(1200,name: DESKTOP),
            ResponsiveBreakpoint.resize(2460,name: "4K")
          ],
          background: Container(
            color: kBackgroundColor,
          )
      ),
      home: Home(),
    );
  }
}
