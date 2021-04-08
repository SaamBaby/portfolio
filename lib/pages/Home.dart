import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web/components/Header.dart';
import 'package:portfolio_web/utils/constants.dart';
import 'package:portfolio_web/utils/globals.dart';

import 'AboutMe.dart';
import 'Intro.dart';
import 'Works.dart';




class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Globals.scaffoldKey,
      endDrawer: Drawer(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 14),
            child: ListView.separated(
               itemBuilder: (BuildContext context, int index){
                  return headerItems[index].isButton? MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black,width: 3),
                          borderRadius: BorderRadius.circular(8)),
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      child: TextButton(
                        onPressed: headerItems[index].onTap,

                        child: Text(
                          headerItems[index].title,
                          style: GoogleFonts.varelaRound(
                              color: Colors.black,
                              fontSize: 12,
                              letterSpacing: 1,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                  ):ListTile(
                    title: Text(
                      headerItems[index].title,
                      style: GoogleFonts.varelaRound(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.w800
                      ),
                    ),
                  );
               },
              separatorBuilder: (BuildContext context, int index){
             return SizedBox(
               height: 10,
             );
              },
              itemCount: headerItems.length,
            ),
          ),

        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Header(),
              ),
              Intro(),
              // SizedBox(height: 50,),
              AboutMe(),
              Works(),
              // Skills(),
              // ContactMe()
            ],
          ),
        ),
      ),
    );
  }
}
