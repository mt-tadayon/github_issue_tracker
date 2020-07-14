import 'package:flutter/material.dart';

const String loginBackgroundImageUrl = 'assets/code.jpg';

const loginBackgroundImage = BoxDecoration(
  image: DecorationImage(
    image: AssetImage(loginBackgroundImageUrl),
    fit: BoxFit.fitHeight,
    alignment: Alignment.topLeft,
    colorFilter: ColorFilter.mode(
      Colors.black38,
      BlendMode.darken,
    )
  )
);

const waveContainer = BoxDecoration(
  boxShadow: [
    BoxShadow(
      color: Colors.black45,
      blurRadius: 4.0,
      offset: Offset(2, 1),
    ),
  ],
  borderRadius: waveBorderOdd,
  gradient: LinearGradient(
    colors: [
      Colors.white60,
      const Color(0x994D95AD),
    ],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
  ),
);

const waveBorderOdd = BorderRadius.only(
  topLeft: Radius.circular(30.0),
  bottomRight: Radius.circular(30.0),
);