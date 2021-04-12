import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:portfolio_web/utils/animation/teddy/teddy.controller.dart';
import 'package:portfolio_web/utils/animation/teddy/tracking.text.input.dart';
import 'package:http/http.dart' as http;
import 'dart:io';



class SignInForm extends StatefulWidget {
  @override
  SignInFormState createState() {
    return SignInFormState();
  }
}

class SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  TeddyController _teddyController;
  bool _isLoading = false;


  @override
  void initState() {
    _teddyController = TeddyController();
    super.initState();
  }
  TextEditingController controllerPassword = TextEditingController();
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerAddress = TextEditingController();

  String email="";
  String name="";
  String message="";







  @override
  Widget build(BuildContext context) {

    var _height= MediaQuery.of(context).size.height;
    var _width= MediaQuery.of(context).size.width;
    _onPressed() async {
      if (_formKey.currentState.validate()) {
        _formKey.currentState.save();
        _formKey.currentState.reset();

        final Email email = Email(
          body: 'Email body',
          subject: 'Email subject',
          recipients: ['saam.baby@outlook.com'],
          isHTML: false,
        );

        await FlutterEmailSender.send(email);



      }
    }

    return Container(

      child: Column(
        children: [
          Container(
            height: _height * 0.25,
            width: _width*.6,
            child: FlareActor(
              "Teddy.flr",
              shouldClip: false,
              alignment: Alignment.bottomCenter,
              fit: BoxFit.contain,
              controller: _teddyController,
            ),
          ),
          Container(
            width: 500,
            height: 400,

            padding: EdgeInsets.symmetric(vertical: 10,
                horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,

              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black
                  .withOpacity(.01)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Form(
                key: _formKey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 30,),
                      Text(
                        "Please fill out the form",
                        style: GoogleFonts.varelaRound(
                            color: Colors.black,
                            fontSize: 13,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [

                          Expanded(
                            child:buildNameFormField(),
                          ),
                          SizedBox(width: 5,),
                          Expanded(
                            child: buildEmailFormField() ,
                          )

                        ],
                      ),
                      SizedBox(height: 10,),
                      buildMessageFormField(),
                      SizedBox(height: 20,),
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Container(
                          width: 250,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black,width: 3),
                              borderRadius: BorderRadius.circular(8)),
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          child: TextButton(
                            onPressed: (){
                              _onPressed();
                            },

                            child: Text(
                              "Send",
                              style: GoogleFonts.varelaRound(
                                  color: Colors.black,
                                  fontSize: 13,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                        ),
                      ),

                    ])),
          ),
        ],
      ),
    );
  }

   buildNameFormField() {
    return TrackingTextInput(

      onTextChanged: (String value) {
        name = value;
      },
      label: "Name",
      labelText: "Please enter your full name",
      onCaretMoved: (Offset caret) {
        _teddyController.lookAt(caret);
      },
      icon: Icons.account_circle_outlined ,
      enable: !_isLoading,

    );
  }

  buildEmailFormField() {
    return TrackingTextInput(
      isEmail:true,
      onTextChanged: (String value) {
        email = value;
      },
      label: "Message",
      labelText: "Please enter your email",
      onCaretMoved: (Offset caret) {
        _teddyController.lookAt(caret);
      },
      enable: !_isLoading,

    );
  }

   buildMessageFormField() {
    return TrackingTextInput(
      isMultiline:true,
      onTextChanged: (String value) {
        message = value;
      },
      label: "Message",
      labelText: "Please enter your message",
      onCaretMoved: (Offset caret) {
        _teddyController.lookAt(caret);
      },
      icon: Icons.email,
      enable: !_isLoading,

    );;
  }
}