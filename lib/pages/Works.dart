import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web/utils/constants.dart';
import 'package:portfolio_web/utils/responsive.screen.helper.dart';


class Works extends StatefulWidget {
  @override
  _WorksState createState() => _WorksState();
}

class _WorksState extends State<Works> with TickerProviderStateMixin {
  TabController _tabController;
  PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

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
                "PORTFOLIO",
                style: GoogleFonts.montserrat(
                  color: Color(0xFFf3f3f3).withOpacity(.5),
                  fontWeight: FontWeight.w800,
                  height: 1,
                  fontSize: MediaQuery.of(context).size.width * 0.14,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 150, right: 150, top: 40),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: _width * .84,
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
                                  "WORKS",
                                  style: GoogleFonts.varelaRound(
                                      fontSize: 12,
                                      height: 1.8,
                                      letterSpacing: 1.5,
                                      fontWeight: FontWeight.w900,
                                      color: kPrimaryColor
                                  ),
                                ),

                                // Container(
                                //   width: 380,
                                //   height: 100,
                                //   child: TabBar(
                                //
                                //     labelColor: kPrimaryColor,
                                //     controller: _tabController,
                                //     tabs: [
                                //
                                //         Tab(child: Text("All",style: TextStyle(
                                //           color: Colors.black,
                                //             fontWeight: FontWeight.w700,
                                //             fontSize: 13,
                                //           fontFamily: kBrunoAce
                                //       ),),),
                                //       Tab(child: Text("Flutter",style:
                                //       TextStyle(
                                //           color: Colors.black,
                                //           fontWeight: FontWeight.w700,
                                //           fontSize: 13,
                                //           fontFamily: kBrunoAce
                                //       ),),),
                                //       Tab(child: Text("WordPress",style:
                                //       TextStyle(
                                //           color: Colors.black,
                                //           fontWeight: FontWeight.w700,
                                //           fontSize: 13,
                                //           fontFamily: kBrunoAce
                                //       ),),),
                                //     ],
                                //   ),
                                // )
                              ],
                            ),
                            RichText(
                                text: TextSpan(
                              text: "My Personal",
                              style: GoogleFonts.montserrat(
                                fontSize: 50,
                                fontWeight: FontWeight.w900,
                                letterSpacing: .5,
                                height: 1,
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' .',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 60,
                                    fontWeight: FontWeight.w900,
                                    letterSpacing: .5,
                                    color: kPrimaryColor,
                                  ),
                                ),
                                TextSpan(
                                  text: "\nProjects",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 50,
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
                            Container(
                              height: 850,
                              width: 1500,
                              child: PageView(
                                controller: _pageController,
                                children: [
                                  Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 20, horizontal: 30),
                                      child: Column(
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,

                                            children: [
                                              Container(
                                                width: _width * .18,
                                                child: Image.asset(
                                                  'images/igreen.Screenshot.png',
                                                  width: 700,
                                                  height: 800,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 150,
                                              ),

                                              Container(
                                                width:800,
                                                child: Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                      height: 120,
                                                    ),
                                                    Text(
                                                      "ANDROID APP",
                                                      style:GoogleFonts.varelaRound(
                                                          fontSize: 12,
                                                          height: 1.8,
                                                          letterSpacing: 1.5,
                                                          fontWeight: FontWeight.w900,
                                                          color: kPrimaryColor
                                                      ),
                                                    ),
                                                    RichText(
                                                        text: TextSpan(
                                                          text: "IGreen",
                                                          style: GoogleFonts
                                                              .montserrat(
                                                            fontSize: 40,
                                                            fontWeight:
                                                            FontWeight.w900,
                                                            letterSpacing: .5,
                                                            height: 1.3,
                                                            color: Colors.black,
                                                          ),
                                                          children: <TextSpan>[
                                                            TextSpan(
                                                              text: ' . ',
                                                              style: GoogleFonts
                                                                  .montserrat(
                                                                fontSize: 40,
                                                                fontWeight:
                                                                FontWeight.w900,
                                                                letterSpacing: .5,
                                                                color:
                                                                kPrimaryColor,
                                                              ),
                                                            ),
                                                            TextSpan(
                                                              text: "Staffing",
                                                              style: GoogleFonts
                                                                  .montserrat(
                                                                fontSize: 40,
                                                                fontWeight:
                                                                FontWeight.w900,
                                                                letterSpacing: .5,
                                                                height: 1.3,
                                                                color: Colors.black,
                                                              ),
                                                            ),
                                                            TextSpan(
                                                              text: "\nConnection",
                                                              style: GoogleFonts
                                                                  .montserrat(
                                                                fontSize: 40,
                                                                fontWeight:
                                                                FontWeight.w900,
                                                                letterSpacing: .5,
                                                                height: 1.3,
                                                                color: Colors.black,
                                                              ),
                                                            )
                                                          ],
                                                        )),
                                                    SizedBox(
                                                      height: 20,
                                                    ),
                                                    Text(
                                                      kAboutIGreen,
                                                      style: GoogleFonts.varelaRound(
                                                          fontSize: 16,
                                                          height: 1.8,
                                                          letterSpacing: 1.5,
                                                          fontWeight: FontWeight.w900,
                                                          color: Colors.black.withOpacity(.5)
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 30,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .start,
                                                      children: [
                                                        RaisedButton(
                                                          color: Colors.black,
                                                          shape:
                                                          RoundedRectangleBorder(
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                10.0),
                                                            // side: BorderSide(color: Colors.red)
                                                          ),
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                              vertical: 20,
                                                              horizontal:
                                                              50),
                                                          onPressed: () {
                                                            if (_pageController
                                                                .hasClients) {
                                                              _pageController
                                                                  .animateToPage(
                                                                1,
                                                                duration:
                                                                const Duration(
                                                                    milliseconds:
                                                                    400),
                                                                curve: Curves
                                                                    .easeInOut,
                                                              );
                                                            }
                                                          },
                                                          child: Text(
                                                            "Next Project",
                                                            style: GoogleFonts.varelaRound(
                                                                fontSize: 15,
                                                                height: 1.8,
                                                                letterSpacing: 1.5,
                                                                fontWeight: FontWeight.w900,
                                                                color: Colors.white
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                        RaisedButton(
                                                          hoverColor: kPrimaryColor.withOpacity(.4),
                                                          textColor:  Colors.black,
                                                          disabledTextColor: Colors.white,
                                                          color: Colors.white,

                                                          shape: RoundedRectangleBorder(

                                                              borderRadius: BorderRadius.circular(10.0),
                                                              side: BorderSide(color: Colors.black,width: 3)

                                                          ),
                                                          padding: EdgeInsets.symmetric(vertical: 20,
                                                              horizontal: 50),
                                                          onPressed: (){},
                                                          child:  Text(
                                                            "Explore More",
                                                            style: GoogleFonts.varelaRound(
                                                                fontSize: 16,
                                                                height: 1.8,
                                                                letterSpacing: 1.5,
                                                                fontWeight: FontWeight.w900,
                                                                color: Colors.black
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 40,
                                              ),
                                              IconButton(
                                                onPressed: () {
                                                  if (_pageController
                                                      .hasClients) {
                                                    _pageController
                                                        .animateToPage(
                                                      1,
                                                      duration: const Duration(
                                                          milliseconds: 400),
                                                      curve: Curves.easeInOut,
                                                    );
                                                  }
                                                },
                                                icon: Icon(
                                                  Icons.arrow_forward_ios,
                                                  color: Colors.black,
                                                  size: 35,
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      )),
                                  Container(
                                    color: Colors.blue,
                                    child: Center(
                                      child: ElevatedButton(
                                        onPressed: () {
                                          if (_pageController.hasClients) {
                                            _pageController.animateToPage(
                                              0,
                                              duration: const Duration(
                                                  milliseconds: 400),
                                              curve: Curves.easeInOut,
                                            );
                                          }
                                        },
                                        child: Text('Previous'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ),

                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        tablet: Stack(
          children: [
            Positioned(
              left: 100,
              right: 0,
              child: Text(
                "PORTFOLIO",
                style: GoogleFonts.montserrat(
                  color: Color(0xFFf3f3f3).withOpacity(.5),
                  fontWeight: FontWeight.w800,
                  height: 1,
                  fontSize: MediaQuery.of(context).size.width * 0.14,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 50, right: 50, top: 40,bottom:50),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
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
                                    "WORKS",
                                    style: GoogleFonts.varelaRound(
                                        fontSize: 12,
                                        height: 1.8,
                                        letterSpacing: 1.5,
                                        fontWeight: FontWeight.w900,
                                        color: kPrimaryColor
                                    ),
                                  ),

                                ],
                              ),
                              RichText(
                                  text: TextSpan(
                                    text: "My Personal",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 40,
                                      fontWeight: FontWeight.w900,
                                      letterSpacing: .5,
                                      height: 1,
                                      color: Colors.black,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: ' .',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 50,
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: .5,
                                          color: kPrimaryColor,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "\nProjects",
                                        style: GoogleFonts.montserrat(
                                          fontSize: 40,
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: .5,
                                          height: 1,
                                          color: Colors.black,
                                        ),
                                      )
                                    ],
                                  )),
                              
                              Container(
                                  child: Column(
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'images/igreen.Screenshot.png',
                                            width: 300,
                                            height: 600,
                                          ),
                                          SizedBox(
                                            width: 50,
                                          ),

                                          Container(
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  height: 120,
                                                ),
                                                Text(
                                                  "ANDROID APP",
                                                  style:GoogleFonts.varelaRound(
                                                      fontSize: 10,
                                                      height: 1.8,
                                                      letterSpacing: 1.5,
                                                      fontWeight: FontWeight.w900,
                                                      color: kPrimaryColor
                                                  ),
                                                ),
                                                RichText(
                                                    text: TextSpan(
                                                      text: "IGreen",
                                                      style: GoogleFonts
                                                          .montserrat(
                                                        fontSize: 30,
                                                        fontWeight:
                                                        FontWeight.w900,
                                                        letterSpacing: .5,
                                                        height: 1.3,
                                                        color: Colors.black,
                                                      ),
                                                      children: <TextSpan>[
                                                        TextSpan(
                                                          text: ' . ',
                                                          style: GoogleFonts
                                                              .montserrat(
                                                            fontSize: 40,
                                                            fontWeight:
                                                            FontWeight.w900,
                                                            letterSpacing: .5,
                                                            color:
                                                            kPrimaryColor,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: "Staffing",
                                                          style: GoogleFonts
                                                              .montserrat(
                                                            fontSize: 30,
                                                            fontWeight:
                                                            FontWeight.w900,
                                                            letterSpacing: .5,
                                                            height: 1.3,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: "\nConnection",
                                                          style: GoogleFonts
                                                              .montserrat(
                                                            fontSize: 30,
                                                            fontWeight:
                                                            FontWeight.w900,
                                                            letterSpacing: .5,
                                                            height: 1.3,
                                                            color: Colors.black,
                                                          ),
                                                        )
                                                      ],
                                                    )),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                SizedBox(
                                                    width:_width*.50,
                                                    child: Text(
                                                      kAboutIGreen,
                                                      overflow: TextOverflow.visible,
                                                      style: GoogleFonts.varelaRound(
                                                          fontSize: 14,
                                                          height: 1.8,
                                                          letterSpacing: 1.2,
                                                          fontWeight: FontWeight.w900,
                                                          color: Colors.black.withOpacity(.5)
                                                      ),
                                                    
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 30,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                                  children: [
                                                    RaisedButton(
                                                      color: Colors.black,
                                                      shape:
                                                      RoundedRectangleBorder(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            10.0),
                                                        // side: BorderSide(color: Colors.red)
                                                      ),
                                                      padding: EdgeInsets
                                                          .symmetric(
                                                          vertical: 20,
                                                          horizontal:
                                                          25),
                                                      onPressed: () {
                                                      },
                                                      child: Text(
                                                        "Next Project",
                                                        style: GoogleFonts.varelaRound(
                                                            fontSize: 12,
                                                            height: 1.8,
                                                            letterSpacing: 1.3,
                                                            fontWeight: FontWeight.w900,
                                                            color: Colors.white
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    RaisedButton(
                                                      hoverColor: kPrimaryColor.withOpacity(.4),
                                                      textColor:  Colors.black,
                                                      disabledTextColor: Colors.white,
                                                      color: Colors.white,

                                                      shape: RoundedRectangleBorder(

                                                          borderRadius: BorderRadius.circular(10.0),
                                                          side: BorderSide(color: Colors.black,width: 3)

                                                      ),
                                                      padding: EdgeInsets.symmetric(vertical: 20,
                                                          horizontal: 25),
                                                      onPressed: (){},
                                                      child:  Text(
                                                        "Explore More",
                                                        style: GoogleFonts.varelaRound(
                                                            fontSize: 12,
                                                            height: 1.8,
                                                            letterSpacing: 1.5,
                                                            fontWeight: FontWeight.w900,
                                                            color: Colors.black
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),

                                        ],
                                      )
                                    ],
                                  )),
                            ],
                          )
                      ),

                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        mobile: Stack(
          children: [
            Positioned(
              left: 100,
              right: 0,
              child: Text(
                "PORTFOLIO",
                style: GoogleFonts.montserrat(
                  color: Color(0xFFf3f3f3).withOpacity(.5),
                  fontWeight: FontWeight.w800,
                  height: 1,
                  fontSize: MediaQuery.of(context).size.width * 0.14,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 50, right: 50, top: 40,bottom:50),
              child: Container(
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
                                    "WORKS",
                                    style: GoogleFonts.varelaRound(
                                        fontSize: 12,
                                        height: 1.8,
                                        letterSpacing: 1.5,
                                        fontWeight: FontWeight.w900,
                                        color: kPrimaryColor
                                    ),
                                  ),

                                ],
                              ),
                              RichText(
                                  text: TextSpan(
                                    text: "My Personal",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 40,
                                      fontWeight: FontWeight.w900,
                                      letterSpacing: .5,
                                      height: 1,
                                      color: Colors.black,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: ' .',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 50,
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: .5,
                                          color: kPrimaryColor,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "\nProjects",
                                        style: GoogleFonts.montserrat(
                                          fontSize: 40,
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: .5,
                                          height: 1,
                                          color: Colors.black,
                                        ),
                                      )
                                    ],
                                  )),
                              Container(
                                  child:
                                  Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'images/igreen.Screenshot.png',
                                            width: 400,
                                            height: 600,
                                          ),
                                          Container(
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "ANDROID APP",
                                                  style:GoogleFonts.varelaRound(
                                                      fontSize: 10,
                                                      height: 1.8,
                                                      letterSpacing: 1.5,
                                                      fontWeight: FontWeight.w900,
                                                      color: kPrimaryColor
                                                  ),
                                                ),
                                                RichText(
                                                    text: TextSpan(
                                                      text: "IGreen",
                                                      style: GoogleFonts
                                                          .montserrat(
                                                        fontSize: 30,
                                                        fontWeight:
                                                        FontWeight.w900,
                                                        letterSpacing: .5,
                                                        height: 1.3,
                                                        color: Colors.black,
                                                      ),
                                                      children: <TextSpan>[
                                                        TextSpan(
                                                          text: ' . ',
                                                          style: GoogleFonts
                                                              .montserrat(
                                                            fontSize: 40,
                                                            fontWeight:
                                                            FontWeight.w900,
                                                            letterSpacing: .5,
                                                            color:
                                                            kPrimaryColor,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: "Staffing",
                                                          style: GoogleFonts
                                                              .montserrat(
                                                            fontSize: 30,
                                                            fontWeight:
                                                            FontWeight.w900,
                                                            letterSpacing: .5,
                                                            height: 1.3,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: "\nConnection",
                                                          style: GoogleFonts
                                                              .montserrat(
                                                            fontSize: 30,
                                                            fontWeight:
                                                            FontWeight.w900,
                                                            letterSpacing: .5,
                                                            height: 1.3,
                                                            color: Colors.black,
                                                          ),
                                                        )
                                                      ],
                                                    )),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                SizedBox(
                                                  width:_width*.65,
                                                  child: Text(
                                                    kAboutIGreen,
                                                    style: GoogleFonts.varelaRound(
                                                        fontSize: 14,
                                                        height: 1.8,
                                                        letterSpacing: 1.5,
                                                        fontWeight: FontWeight.w900,
                                                        color: Colors.black.withOpacity(.5)
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 30,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                                  children: [
                                                    RaisedButton(
                                                      color: Colors.black,
                                                      shape:
                                                      RoundedRectangleBorder(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            10.0),
                                                        // side: BorderSide(color: Colors.red)
                                                      ),
                                                      padding: EdgeInsets
                                                          .symmetric(
                                                          vertical: 20,
                                                          horizontal:
                                                          25),
                                                      onPressed: () {
                                                      },
                                                      child: Text(
                                                        "Next Project",
                                                        style: GoogleFonts.varelaRound(
                                                            fontSize: 12,
                                                            height: 1.8,
                                                            letterSpacing: 1.3,
                                                            fontWeight: FontWeight.w900,
                                                            color: Colors.white
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    RaisedButton(
                                                      hoverColor: kPrimaryColor.withOpacity(.4),
                                                      textColor:  Colors.black,
                                                      disabledTextColor: Colors.white,
                                                      color: Colors.white,

                                                      shape: RoundedRectangleBorder(

                                                          borderRadius: BorderRadius.circular(10.0),
                                                          side: BorderSide(color: Colors.black,width: 3)

                                                      ),
                                                      padding: EdgeInsets.symmetric(vertical: 20,
                                                          horizontal: 25),
                                                      onPressed: (){},
                                                      child:  Text(
                                                        "Explore More",
                                                        style: GoogleFonts.varelaRound(
                                                            fontSize: 12,
                                                            height: 1.8,
                                                            letterSpacing: 1.5,
                                                            fontWeight: FontWeight.w900,
                                                            color: Colors.black
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),

                                        ],
                                      )
                                    ),
                            ],
                          )

                  )

            ),
          ],
        ),
      ),
    );
  }
}
