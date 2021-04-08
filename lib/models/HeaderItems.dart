import 'package:flutter/cupertino.dart';

class HeaderItem{
  final String title;
  final VoidCallback onTap;
  final bool isButton;

  HeaderItem({
   this.isButton = false,
   this.onTap,
   this.title
  });
}