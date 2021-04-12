import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web/utils/animation/teddy/teddy.input.header.dart';
import 'package:universal_html/html.dart';



typedef void CaretMoved(Offset globalCaretPosition);
typedef void TextChanged(String text);

// Helper widget to track caret position.
// ignore: must_be_immutable
class TrackingTextInput extends StatefulWidget {

  TrackingTextInput(
      {Key key,
        this.onCaretMoved,
        this.onTextChanged,
        this.enable,
        this.label,
        this.icon,
        this.labelText,
        this.isMultiline=false,
        this.isEmail= false})
      : super(key: key);
  final CaretMoved onCaretMoved;
  final TextChanged onTextChanged;
  final String labelText;
  final bool isMultiline;
  final String label;
  final bool isEmail;
  final bool enable;

//  final FormFieldValidator<String> validator;
  final IconData icon;

  @override
  _TrackingTextInputState createState() => _TrackingTextInputState();
}

class _TrackingTextInputState extends State<TrackingTextInput> {
  final fieldValidator = MultiValidator([
    RequiredValidator(errorText: 'FullName is required'),
  ]);
  final multiLineValidator = MultiValidator([
    RequiredValidator(errorText: 'FullName is required'),
  ]);
  final emailValidator = MultiValidator([
    RequiredValidator(errorText: 'Email is required'),
    EmailValidator(errorText: 'Please enter a valid email address'),
  ]);
  final GlobalKey _fieldKey = GlobalKey();
  final TextEditingController _textController = TextEditingController();
  Timer _debounceTimer;

//  bool _isPasswordField = false;
//  bool _passwordObscured = false;

  @override
  initState() {
    _textController.addListener(() {
      // We debounce the listener as sometimes the caret position is updated after the listener
      // this assures us we get an accurate caret position.
      if (_debounceTimer?.isActive ?? false) _debounceTimer.cancel();
      _debounceTimer = Timer(const Duration(milliseconds: 100), () {
        if (_fieldKey.currentContext != null) {
          // Find the render editable in the field.
          final RenderObject fieldBox =
          _fieldKey.currentContext.findRenderObject();
          Offset caretPosition = getCaretPosition(fieldBox);

          if (widget.onCaretMoved != null) {
            widget.onCaretMoved(caretPosition);
          }
        }
      });
      if (widget.onTextChanged != null) {
        widget.onTextChanged(_textController.text);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: _fieldKey,
      style: TextStyle(fontSize: 13.0),
      enabled: widget.enable,
      maxLines: widget.isMultiline?7:1,
      validator: widget.isMultiline ? multiLineValidator : widget
          .isEmail?emailValidator:fieldValidator,

      keyboardType: widget.isMultiline ? TextInputType.multiline : widget
          .isEmail?TextInputType.emailAddress:TextInputType.text,
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder:  OutlineInputBorder(

          borderSide: BorderSide(
            color: Colors.black,
            style: BorderStyle.solid,
            width: 3,//this has no effect
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            style: BorderStyle.solid,
            width: 3,
            color: Colors.black,
            //this has no effect
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintText: widget.labelText,
        labelText: widget.label,
        labelStyle:GoogleFonts.varelaRound(
            fontSize: 12,
            height: 1.3,
            letterSpacing: 1,

            fontWeight: FontWeight.w700,
            color: Colors.black
        ),
        hintStyle: GoogleFonts.varelaRound(
            fontSize: 13,
            letterSpacing: 1,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w600,
            color: Colors.black.withOpacity(.4)
        ),
      ),
      controller: _textController,

    );
  }
}