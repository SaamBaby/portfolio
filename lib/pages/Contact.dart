import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web/utils/constants.dart';
import 'package:portfolio_web/utils/responsive.screen.helper.dart';

class ContactMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;
    return Container(
      child: ScreenHelper(
        desktop: Stack(
          children: [
            Positioned(
              left: 100,
              right: 0,
              child: Text(
                "CONTACT",
                style: GoogleFonts.montserrat(
                  color: Color(0xFFf3f3f3).withOpacity(.5),
                  fontWeight: FontWeight.w800,
                  height: 1,
                  fontSize: MediaQuery.of(context).size.width * 0.14,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: 150, right: 150, top: 20, bottom: 100),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: _width * .4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 5),
                                      height: 5.0,
                                      width: 40.0,
                                      color: kPrimaryColor,
                                    ),
                                    Text(
                                      "ContactMe",
                                      style: GoogleFonts.varelaRound(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w900,
                                        color: kPrimaryColor,
                                      ),
                                    )
                                  ],
                                ),
                                RichText(
                                    text: TextSpan(
                                  text: "Leave a ",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 50,
                                    fontWeight: FontWeight.w900,
                                    letterSpacing: .5,
                                    height: 1,
                                    color: Colors.black,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: '\nmessage',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 50,
                                        fontWeight: FontWeight.w900,
                                        letterSpacing: .5,
                                        color: kPrimaryColor,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "!",
                                      style: GoogleFonts.montserrat(
                                        fontSize: 60,
                                        fontWeight: FontWeight.w900,
                                        letterSpacing: .5,
                                        height: 1,
                                        color: Colors.black,
                                      ),
                                    )
                                  ],
                                )),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 60,
                          ),
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Row(
                              children: [
                                Icon(Icons.email),
                                SizedBox(
                                  width: 10,
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "saam.baby@outlook.com",
                                    style: GoogleFonts.varelaRound(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_forward,
                                      color: kPrimaryColor),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Row(
                              children: [
                                Icon(Icons.phone),
                                SizedBox(
                                  width: 10,
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "+1 2499890215",
                                    style: GoogleFonts.varelaRound(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Row(
                            children: [
                              IconButton(
                                icon: Icon(
                                  FontAwesomeIcons.facebookF,
                                  size: 20,
                                ),
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: Icon(
                                  FontAwesomeIcons.twitter,
                                  size: 20,
                                ),
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: Icon(
                                  FontAwesomeIcons.instagram,
                                  size: 20,
                                ),
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: Icon(
                                  FontAwesomeIcons.linkedinIn,
                                  size: 20,
                                ),
                                onPressed: () {},
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 200,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  width: _width,
                  height: 40,
                  color: Colors.black,
                  child: Center(
                    child: Text(
                      "© SamBaby 2020 All rights reserved.",
                      style: GoogleFonts.varelaRound(
                          fontSize: 12,
                          height: 1.3,
                          letterSpacing: 1.3,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
        tablet: Padding(
          padding: EdgeInsets.only(top: 10, bottom: 10, right: 50),
          child: Container(
            color: Colors.amber,
            child: Text("test"),
          ),
        ),
        mobile: Padding(
          padding: EdgeInsets.only(top: 10, bottom: 10, right: 50),
          child: Container(
            color: Colors.pinkAccent,
            child: Text("test"),
          ),
        ),
      ),
    );
  }
}
