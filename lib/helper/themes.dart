import 'package:flutter/material.dart';

//COLOR
const Color primaryColor = Colors.black;
const Color primarySecondColor = Colors.white;
const Color primaryTextColor = Color(0xF2EAF9);

const double defaultPadding = 16.0;

//FONT STYLES INITIAL

TextStyle buttonStyle({required final color}) {
  return TextStyle(
      color: color,
      fontWeight: FontWeight.w600,
      fontSize: 12
  );
}

TextStyle textChatting() {
  return TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w700,
    fontFamily: 'Lato',
  );
}

TextStyle textNoChat() {
  return TextStyle(
    fontFamily: 'Lato',
    fontWeight: FontWeight.w900,
    fontSize: 18,
  );
}

TextStyle defaultText = TextStyle(
    fontFamily: 'NotoSerifMedium'
);

TextStyle titleText = TextStyle(
  fontFamily: 'Lato',
  fontSize: 30,
  fontWeight: FontWeight.bold,
);

TextStyle textField = TextStyle(
    fontFamily: 'NotoSerifMedium',
    color: primaryTextColor
);

//IMAGE ASSETS
String icon = 'assets/icon.png';
String login_register = 'assets/login_register.png';
String profile_icon = 'assets/zee.png';