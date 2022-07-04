import 'package:flutter/material.dart';

const String FontNameDefault = "Montserrat";

const LargeTextSize = 27.0;
const MediumTextSize = 23.0;
const BodyTextSize = 16.5;

const DefaultPaddingHorizontal = 30.0;

const Color TextColorDark = Colors.black;
const Color TextColorLight = Color.fromARGB(255, 255, 255, 255);
const Color TextColorAccent = Color.fromARGB(255, 255, 136, 128);
const Color TextColorFaint = Color.fromRGBO(125, 125, 125, 1.0);

const AppBarTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: MediumTextSize,
  color: Colors.white,
);

const TitleTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: MediumTextSize,
  color: Colors.black,
);

const SubTitleTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: MediumTextSize,
  color: TextColorAccent,
);

const CaptionTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: BodyTextSize,
  color: TextColorDark,
);

const Body1TextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: BodyTextSize,
  color: Colors.black,
);
