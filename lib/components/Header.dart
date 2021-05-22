import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web/models/HeaderItems.dart';
import 'package:portfolio_web/utils/globals.dart';
import 'package:portfolio_web/utils/responsive.screen.helper.dart';
import 'package:responsive_framework/responsive_framework.dart';

List<HeaderItem> headerItems = [
  HeaderItem(title: "Home", onTap: () {}),
  HeaderItem(title: "My Intro", onTap: () {}),
  HeaderItem(title: "Works", onTap: () {}),
  HeaderItem(title: "Skills", onTap: () {}),
  HeaderItem(title: "Contact Me", isButton: true, onTap: () {}),
];

class HeaderLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () {},
          child: Image.asset('logo.png',width: 120,height: 120,),
        ),
      ),
    );
  }
}

class HeaderRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveVisibility(
        visible: false,
        visibleWhen: [
          Condition.largerThan(name: MOBILE),
        ],

        child:Padding(
          padding: EdgeInsets.only(left: 50,right: 0,top: 0),
          child: Row(
            children: headerItems.map((e) => e.isButton?MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black,width: 3),
                    borderRadius: BorderRadius.circular(8)),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: TextButton(
                  onPressed: e.onTap,

                  child: Text(
                    e.title,
                    style: GoogleFonts.varelaRound(
                        color: Colors.black,
                        fontSize: 13,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            )
                : MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Container(
                margin: EdgeInsets.only(right: 40),
                child: GestureDetector(
                  onTap: e.onTap,
                  child: Text(
                    e.title,
                    style: GoogleFonts.varelaRound(
                        fontSize: 16,
                        height: 1.3,
                        letterSpacing: 1.3,
                        fontWeight: FontWeight.w900,
                        color: Colors.black
                    ),
                  ),
                ),
              ),
            ),).toList(),
          ),
        ));
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenHelper(
        desktop: Padding(
          padding: EdgeInsets.only(top: 0,bottom: 10,right: 50),
          child: buildHeader(),
        ),
        tablet: buildHeader(),
        mobile: buildMobileHeader(),
      ),
    );
  }
}

Widget buildMobileHeader() {
  return SafeArea(
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeaderLogo(),
          GestureDetector(
            onTap: (){
                // opening the drawer
              Globals.scaffoldKey.currentState.openEndDrawer();
            },
            child: Icon(Icons.menu,
            color: Colors.black,
            size: 32,),
          )
        ],
      ),
    ),
  );
}
Widget buildHeader() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        HeaderLogo(),
        Spacer(),

        HeaderRow()
      ],
    ),
  );
}
