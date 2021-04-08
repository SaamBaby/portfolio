import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web/utils/constants.dart';
import 'package:portfolio_web/utils/responsive.screen.helper.dart';



class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    var _width= MediaQuery.of(context).size.width;
    var _height= MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: ScreenHelper(
        desktop:  Stack(
            children: [
           _buildDesign("DES\nIGN"),
            Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Container(

                        padding: EdgeInsets.symmetric(horizontal: 100),
                        width: _width*.35,
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
                                Text("FULL-STACK DEVELOPER",style: GoogleFonts
                                    .varelaRound(
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
                                text: "Hello",
                                style: GoogleFonts.montserrat(
                                  fontSize: 55,
                                  fontWeight: FontWeight.w900,
                                  letterSpacing: .5,
                                  height: 1.3,
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
                                    text: "\nmy name's Sam.\nI am a Flutter"
                                        "\nDeveloper",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 55,
                                      fontWeight: FontWeight.w900,
                                      letterSpacing: .5,
                                      height: 1.3,
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              )
                            ),
                            SizedBox(height: 60,),
                            RaisedButton(
                              textColor: Colors.white,
                              color: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                // side: BorderSide(color: Colors.red)
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
                                    color: Colors.white
                                ),),
                            ),
                            SizedBox(height: 200,),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                child: Row(
                                  children: [
                                    FloatingActionButton(
                                      hoverElevation: 2,
                                      elevation: 4,
                                      onPressed: () {},
                                      backgroundColor: Colors.white,
                                      child: Icon(Icons.arrow_downward,color:
                                      Colors.black,),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text("Scroll Down",
                                      style:GoogleFonts.varelaRound(
                                          fontSize: 13,
                                          height: 1,
                                          letterSpacing: 1,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black
                                      ),),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Expanded(
                      flex: 1,
                      child: Container(
                        width: _width*.30,
                        child: Image.asset('images/imgFile.png',width:
                        700,height: 800,),
                      ),
                    ),
                    SizedBox(
                      width: _width*.1,
                      child: Column(
                        children: [
                          SizedBox(height: _height*.2,),
                          RotatedBox(
                              quarterTurns: 1,
                              child:Container(
                                margin: EdgeInsets.only(right: 5),
                                height:3.0,
                                width:70.0,
                                color:kPrimaryColor,),
                          ),
                          SizedBox(height: 30,),
                          RotatedBox(
                              quarterTurns: 1,
                              child: new Text("LinkedIn",style: GoogleFonts.varelaRound(
                                  fontSize: 14,
                                  height: 1.3,
                                  letterSpacing: 1.3,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black
                              ),)
                          ),
                          SizedBox(height: 40,),
                          RotatedBox(
                              quarterTurns: 1,
                              child: new Text("Dribble",style:GoogleFonts.varelaRound(
                                  fontSize: 14,
                                  height: 1.3,
                                  letterSpacing: 1.3,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black
                              ),)
                          ),
                          SizedBox(height: 40,),
                          RotatedBox(
                              quarterTurns: 1,
                              child: new Text("GitHub",style: GoogleFonts.varelaRound(
                                  fontSize: 14,
                                  height: 1.3,
                                  letterSpacing: 1.3,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black
                              ),)
                          )

                        ],
                      ),
                    ),
                  ],
                ),
            ],
          ),

        tablet:Padding(
          padding: EdgeInsets.only(top: 10,bottom: 10,right: 50),
          child: Container(
            color: Colors.amber,
            child: Text("test"),
          ),
        ),
        mobile: Padding(
          padding: EdgeInsets.only(top: 10,bottom: 10,right: 50),
          child: Container(
            color: Colors.pinkAccent,
            child: Text("test"),
          ),
        ),
      ),
    );
  }
  Widget _buildDesign(String text) {
    return Padding(
     padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*.114),
      child: Text(
        text,
        style: GoogleFonts.montserrat(
          color: Color(0xFFf3f3f3).withOpacity(.5),
          fontWeight: FontWeight.w800,
          height: 1,
          fontSize: MediaQuery.of(context).size.width * 0.24,
        ),
      ),
    );
  }




}

