import 'package:flutter/material.dart';

//COLOR
const Color primaryColor = Colors.black;
const Color primarySecondColor = Colors.white;
const Color primaryTextColor = Color(0xF2EAF9);
const Color greyColor = Color(0xFFB3B3B3);
const Color backColor = Color(0xFFF6243D);

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
    fontFamily: 'Poppins',
    color: primarySecondColor,
  );
}

TextStyle textNoChat() {
  return TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w900,
    fontSize: 18,
    color: primarySecondColor,
  );
}

TextStyle defaultText = TextStyle(
    fontFamily: 'NotoSerifMedium',
    color: primarySecondColor,

);

TextStyle titleText = TextStyle(
  fontFamily: 'Poppins',
  fontSize: 30,
  fontWeight: FontWeight.w700,
  color: primarySecondColor,
);

TextStyle subtitleText = TextStyle(
  fontFamily: 'Poppins',
  fontSize: 20,
  fontWeight: FontWeight.w600,
  color: primarySecondColor,
);

TextStyle subtitleTextGrey = TextStyle(
  fontFamily: 'Poppins',
  fontSize: 20,
  fontWeight: FontWeight.w600,
  color: greyColor,
);

TextStyle textField = TextStyle(
    fontFamily: 'Poppins',
    color: primarySecondColor,
);

TextStyle textFieldGrey = TextStyle(
  fontFamily: 'Poppins',
  color: greyColor,
);

//IMAGE ASSETS
String icon = 'assets/icon.png';
String login_register = 'assets/login_register.png';
String profile_icon = 'assets/zee.png';