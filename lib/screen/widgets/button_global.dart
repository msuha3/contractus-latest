import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constant.dart';

// ignore: must_be_immutable
class ButtonGlobal extends StatelessWidget {
  final String buttontext;
  final Decoration buttonDecoration;
  double fontsize;

  // ignore: prefer_typing_uninitialized_variables
  var onPressed;

  // ignore: use_key_in_widget_constructors
  ButtonGlobal({required this.buttontext, this.buttonDecoration = kButtonDecorationdefault, required this.onPressed,this.fontsize = 13});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
        decoration: buttonDecoration,
        child: Center(
          child: Text(
            buttontext,
            style: kTextStyle.copyWith(fontSize: fontsize, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class ButtonGlobalWithoutIcon extends StatelessWidget {
  final String buttontext;
  Decoration buttonDecoration;

  // ignore: prefer_typing_uninitialized_variables
  var onPressed;
  final Color buttonTextColor;

  // ignore: use_key_in_widget_constructors
  ButtonGlobalWithoutIcon({required this.buttontext, required this.onPressed, this.buttonDecoration = kButtonDecorationdefault, required this.buttonTextColor});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
        decoration: buttonDecoration,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttontext,
              style: GoogleFonts.jost(fontSize: 20.0, color: buttonTextColor),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class ButtonGlobalWithIcon extends StatelessWidget {
  final String buttontext;
  final Decoration buttonDecoration;

  // ignore: prefer_typing_uninitialized_variables
  var onPressed;
  final Color buttonTextColor;
  // ignore: prefer_typing_uninitialized_variables
  final buttonIcon;

  // ignore: use_key_in_widget_constructors
  ButtonGlobalWithIcon({
    required this.buttontext,
    required this.buttonDecoration,
    required this.onPressed,
    required this.buttonTextColor,
    required this.buttonIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
        decoration: buttonDecoration,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              buttonIcon,
              color: buttonTextColor,
            ),
            const SizedBox(width: 5.0),
            Text(
              buttontext,
              style: GoogleFonts.jost(fontSize: 20.0, color: buttonTextColor),
            ),
          ],
        ),
      ),
    );
  }
}
