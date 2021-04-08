import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web/models/SkillsModel.dart';
import 'package:portfolio_web/utils/constants.dart';
import 'package:portfolio_web/utils/responsive.screen.helper.dart';

class Skills extends StatefulWidget {
  @override
  _SkillsState createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  List<SkillItem> skillsItems = [
    SkillItem(name: "Flutter", imgUrl: "images/file_type_flutter_icon_130599.png"),
    SkillItem(name: "My Sql", imgUrl: "images/mysql_original_wordmark_logo_icon_146417.png"),
    SkillItem(name: "Firebase", imgUrl: "images/google_firebase_icon-icons.com_61475.png"),
    SkillItem(name: "GraphQl", imgUrl: "images/file_type_graphql_icon_130564.png"),
    SkillItem(name: "React.js", imgUrl: "images/react_original_logo_icon_146374.png"),
    SkillItem(name: "Node.js", imgUrl: "images/file_type_node_icon_130301.png"),
    SkillItem(name: "HTML", imgUrl: "images/file_type_html_icon_130541.png"),
    SkillItem(name: "CSS", imgUrl: "images/file_type_css_icon_130661.png"),
    SkillItem(name: "Figma", imgUrl: "images/figma_logo_icon_170157.png"),



  ];
  @override
  Widget build(BuildContext context) {
    var _width= MediaQuery.of(context).size.width;
    var _height= MediaQuery.of(context).size.height;
    return Container(
      child: ScreenHelper(
        desktop:  Stack(
          children: [
            Positioned(
              left: 100,right: 0,
              child:  Text(
                "SKILLS",
                style: GoogleFonts.montserrat(
                  color: Color(0xFFf3f3f3).withOpacity(.5),
                  fontWeight: FontWeight.w800,
                  height: 1,
                  fontSize: MediaQuery.of(context).size.width * 0.14,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 150,right: 150,top:20,bottom: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
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
                            Text("Skills",style: GoogleFonts.varelaRound(
                                fontSize: 15,
                                height: 1.8,
                                letterSpacing: 1.5,
                                fontWeight: FontWeight.w900,
                                color: kPrimaryColor
                            ),)
                          ],
                        ),
                        RichText(
                            text: TextSpan(
                              text: "My Skills",
                              style: GoogleFonts.montserrat(
                                fontSize: 50,
                                fontWeight: FontWeight.w900,
                                letterSpacing: .5,
                                height: 1,
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' & ',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 60,
                                    fontWeight: FontWeight.w900,
                                    letterSpacing: .5,
                                    color: kPrimaryColor,
                                  ),
                                ),
                                TextSpan(
                                  text: "\nTools",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 50,
                                    fontWeight: FontWeight.w900,
                                    letterSpacing: .5,
                                    height: 1,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            )
                        ),
                        SizedBox(height: 10,),


                      ],
                    ),
                  ),

                  SizedBox(height: 100,),


                  Row(
                    children: skillsItems.map((e) => MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Container(
                        margin: EdgeInsets.only(right: 40),
                        child: Center(
                          child: Container(
                            child: Column(
                              
                              children: [
                                Image.asset(e.imgUrl,height: 130,width: 130,),
                                Text(
                                  e.name,
                                  style: GoogleFonts.varelaRound(
                                      fontSize: 16,
                                      height: 1.3,
                                      letterSpacing: 1.3,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black.withOpacity(.6)
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ),
                    ),).toList(),
                  ),



                ],
              ),
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
}
