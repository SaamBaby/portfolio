import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web/utils/constants.dart';
import 'package:portfolio_web/utils/responsive.screen.helper.dart';


class AboutMe extends StatefulWidget {
  @override
  _AboutMeState createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    var _width= MediaQuery.of(context).size.width;
    var _height= MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: ScreenHelper(
        desktop:  Stack(
          children: [

            Positioned(
              right: 100,
              child:  Text(
                "CODE",
                style: GoogleFonts.montserrat(
                  color: Color(0xFFf3f3f3).withOpacity(.5),
                  fontWeight: FontWeight.w800,
                  height: 1,
                  fontSize: MediaQuery.of(context).size.width * 0.14,
                ),
              ),
            ),
            Positioned(
              left: 200,
              top: 150,
              child:  Text(
                "▢",
                style: GoogleFonts.montserrat(
                  color:Color(0xFFf3f3f3).withOpacity(.5),
                  fontWeight: FontWeight.w300,

                  height: 1,
                  fontSize: MediaQuery.of(context).size.width * 0.16,
                ),
              ),
            ),
            Positioned(
              left: 150,
              top: 100,
              child:  Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 3,
                      blurRadius: 4,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15),

                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('ui-design.png',width:
                      100,height: 100,),
                      Text("Front end",
                        style:GoogleFonts.varelaRound(
                          fontSize: 13,
                          color: Colors.black,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w900,

                        ),),

                    ],
                ),
              )
            ),
            Positioned(
              left: 350,
              top: 150,
              child:  Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 3,
                      blurRadius: 4,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15),

                ),
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('illustration.png',width:
                    100,height: 100,),
                    Text("Prototyping",
                      style:GoogleFonts.varelaRound(
                        fontSize: 13,
                        color: Colors.black,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w900,

                      ),),

                  ],
                ),
              ),
            ),
            Positioned(
              left: 125,
              top: 300,
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(

                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 3,
                      blurRadius: 4,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),

                ),
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('content-management.png',width:
                    100,height: 100,),
                    Text("Back end",
                      style:GoogleFonts.varelaRound(
                        fontSize: 13,
                        color: Colors.black,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w900,

                      ),),

                  ],
                ),
              ),
            ),
            Positioned(
              left: 325,
              top: 350,
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 3,
                      blurRadius: 4,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15),

                ),
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('pros-and-cons.png',width:
                    100,height: 100,),
                    Text("Testing",
                      style:GoogleFonts.varelaRound(
                        fontSize: 13,
                        color: Colors.black,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w900,

                      ),),

                  ],
                ),
              ),
            ),




            Padding(
              padding: EdgeInsets.only(left: 150,right: 150,top:10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[


                  Container(
                    margin: EdgeInsets.only(left: _width*.28),
                    width: _width*.48,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              height:5.0,
                              width:40.0,
                              color:kPrimaryColor,),
                            Text("ABOUT ME",style: GoogleFonts.varelaRound(
                                fontSize: 12,
                                height: 1.3,
                                letterSpacing: 1.3,
                                fontWeight: FontWeight.w900,
                                color: kPrimaryColor
                            ),)
                          ],
                        ),
                        RichText(
                            text: TextSpan(
                              text: "Better design",
                              style: GoogleFonts.montserrat(
                                fontSize: 55,
                                fontWeight: FontWeight.w900,
                                letterSpacing: .5,
                                height: 1.3,
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' ,',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 60,
                                    fontWeight: FontWeight.w900,
                                    letterSpacing: .5,
                                    color: kPrimaryColor,
                                  ),
                                ),
                                TextSpan(
                                  text: "\nbetter experiences ",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 50,
                                    fontWeight: FontWeight.w900,
                                    letterSpacing: .5,
                                    height: 1.3,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            )
                        ),
                        SizedBox(height: 10,),
                        Text(kAboutMe,
                            style:GoogleFonts.varelaRound(
                                fontSize: 16,
                                height: 2,
                                letterSpacing: 1.5,
                                fontWeight: FontWeight.w900,
                                color: Colors.black.withOpacity(.5)
                            ),
                        ),
                        SizedBox(height: 40,),
                        Row(children: [
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
                            child: Text("Contact Me",
                              style:GoogleFonts.varelaRound(
                                fontSize: 16,
                                height: 1.8,
                                letterSpacing: 1.5,
                                fontWeight: FontWeight.w900,

                              ),),
                          ),
                          SizedBox(width: 20,),
                          RaisedButton(
                            textColor: Colors.white,
                            color: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),

                            padding: EdgeInsets.symmetric(vertical: 20,
                                horizontal: 50),
                            onPressed: (){},
                            child: Text("Download Resume",
                              style:GoogleFonts.varelaRound(
                                  fontSize: 16,
                                  height: 1.8,
                                  letterSpacing: 1.5,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white
                              ),),
                          ),

                        ],),
                        SizedBox(height: 50,),
                        Image.asset('signature.png',width:
                        100,height: 100,)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

        tablet:Stack(
          children: [

            Positioned(
              right: 50,
              child:  Text(
                "CODE",
                style: GoogleFonts.montserrat(
                  color: Color(0xFFf3f3f3).withOpacity(.5),
                  fontWeight: FontWeight.w800,
                  height: 1,
                  fontSize: MediaQuery.of(context).size.width * 0.14,
                ),
              ),
            ),
            Positioned(
              left: 150,
              top: 150,
              child:  Text(
                "▢",
                style: GoogleFonts.montserrat(
                  color:Color(0xFFf3f3f3).withOpacity(.5),
                  fontWeight: FontWeight.w300,

                  height: 1,
                  fontSize: MediaQuery.of(context).size.width * 0.16,
                ),
              ),
            ),
            Positioned(
                left: 40,
                top: 100,
                child:  Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 3,
                        blurRadius: 4,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(15),

                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('ui-design.png',width:
                      100,height: 100,),
                      Text("Front end",
                        style:GoogleFonts.varelaRound(
                          fontSize: 13,
                          color: Colors.black,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w900,

                        ),),

                    ],
                  ),
                )
            ),
            Positioned(
              left: 230,
              top: 110,
              child:  Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 3,
                      blurRadius: 4,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15),

                ),
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('illustration.png',width:
                    100,height: 100,),
                    Text("Prototyping",
                      style:GoogleFonts.varelaRound(
                        fontSize: 13,
                        color: Colors.black,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w900,

                      ),),

                  ],
                ),
              ),
            ),
            Positioned(
              left: 60,
              top: 275,
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(

                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 3,
                      blurRadius: 4,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),

                ),
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('content-management.png',width:
                    100,height: 100,),
                    Text("Back end",
                      style:GoogleFonts.varelaRound(
                        fontSize: 13,
                        color: Colors.black,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w900,

                      ),),

                  ],
                ),
              ),
            ),
            Positioned(
              left: 250,
              top: 290,
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 3,
                      blurRadius: 4,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15),

                ),
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('pros-and-cons.png',width:
                    100,height: 100,),
                    Text("Testing",
                      style:GoogleFonts.varelaRound(
                        fontSize: 13,
                        color: Colors.black,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w900,

                      ),),

                  ],
                ),
              ),
            ),




            Padding(
              padding: EdgeInsets.only(left: 100,right: 0,top:0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[


                  Container(
                    margin: EdgeInsets.only(left: _width*.35),
                    width: _width*.4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              height:5.0,
                              width:40.0,
                              color:kPrimaryColor,),
                            Text("ABOUT ME",style: GoogleFonts.varelaRound(
                                fontSize: 12,
                                height: 1.3,
                                letterSpacing: 1.3,
                                fontWeight: FontWeight.w900,
                                color: kPrimaryColor
                            ),)
                          ],
                        ),
                        RichText(
                            text: TextSpan(
                              text: "Better design",
                              style: GoogleFonts.montserrat(
                                fontSize: 40,
                                fontWeight: FontWeight.w900,
                                letterSpacing: .5,
                                height: 1.3,
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' ,',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 50,
                                    fontWeight: FontWeight.w900,
                                    letterSpacing: .5,
                                    color: kPrimaryColor,
                                  ),
                                ),
                                TextSpan(
                                  text: "\nbetter experiences ",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 40,
                                    fontWeight: FontWeight.w900,
                                    letterSpacing: .5,
                                    height: 1.3,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            )
                        ),
                        SizedBox(height: 10,),
                        Text(kAboutMe,
                          style:GoogleFonts.varelaRound(
                              fontSize: 14,
                              height: 2,
                              letterSpacing: 1.5,
                              fontWeight: FontWeight.w900,
                              color: Colors.black.withOpacity(.5)
                          ),
                        ),
                        SizedBox(height: 40,),
                        Row(children: [
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
                            child: Text("Contact Me",
                              style:GoogleFonts.varelaRound(
                                fontSize: 12,
                                height: 1.8,
                                letterSpacing: 1.5,
                                fontWeight: FontWeight.w900,

                              ),),
                          ),
                          SizedBox(width: 20,),
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
                            child: Text("Download Resume",
                              style:GoogleFonts.varelaRound(
                                  fontSize: 12,
                                  height: 1.8,
                                  letterSpacing: 1.5,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white
                              ),),
                          ),

                        ],),
                        SizedBox(height: 50,),
                        Image.asset('signature.png',width:
                        100,height: 100,)


                      ],
                    ),
                  ),


                ],
              ),
            ),
          ],
        ),
        mobile: Stack(
          children: [

            Positioned(
              right: 50,
              child:  Text(
                "CODE",
                style: GoogleFonts.montserrat(
                  color: Color(0xFFf3f3f3).withOpacity(.5),
                  fontWeight: FontWeight.w800,
                  height: 1,
                  fontSize: MediaQuery.of(context).size.width * 0.14,
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 50,right: 50,top:0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[


                  Container(
                    width: _width*.7,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              height:5.0,
                              width:40.0,
                              color:kPrimaryColor,),
                            Text("ABOUT ME",style: GoogleFonts.varelaRound(
                                fontSize: 12,
                                height: 1.3,
                                letterSpacing: 1.3,
                                fontWeight: FontWeight.w900,
                                color: kPrimaryColor
                            ),)
                          ],
                        ),
                        RichText(
                            text: TextSpan(
                              text: "Better design",
                              style: GoogleFonts.montserrat(
                                fontSize: 40,
                                fontWeight: FontWeight.w900,
                                letterSpacing: .5,
                                height: 1.3,
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' ,',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 50,
                                    fontWeight: FontWeight.w900,
                                    letterSpacing: .5,
                                    color: kPrimaryColor,
                                  ),
                                ),
                                TextSpan(
                                  text: "\nbetter experiences ",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 40,
                                    fontWeight: FontWeight.w900,
                                    letterSpacing: .5,
                                    height: 1.3,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            )
                        ),
                        SizedBox(height: 10,),
                        Text(kAboutMe,
                          style:GoogleFonts.varelaRound(
                              fontSize: 14,
                              height: 2,
                              letterSpacing: 1.5,
                              fontWeight: FontWeight.w900,
                              color: Colors.black.withOpacity(.5)
                          ),
                        ),
                        SizedBox(height: 40,),
                        Row(children: [
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
                            child: Text("Contact Me",
                              style:GoogleFonts.varelaRound(
                                fontSize: 12,
                                height: 1.8,
                                letterSpacing: 1.5,
                                fontWeight: FontWeight.w900,

                              ),),
                          ),
                          SizedBox(width: 20,),
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
                            child: Text("Download Resume",
                              style:GoogleFonts.varelaRound(
                                  fontSize: 12,
                                  height: 1.8,
                                  letterSpacing: 1.5,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white
                              ),),
                          ),

                        ],),
                        SizedBox(height: 50,),
                        Image.asset('signature.png',width:
                        100,height: 100,)


                      ],
                    ),
                  ),









                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}


