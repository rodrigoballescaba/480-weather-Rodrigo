import 'package:flutter/material.dart';

const transparent = Color(0x00000000);
const black = Color(0xFF000000);
const white = Color(0xFFFFFFFF);
const grey = Color(0xFF909090);
const greyLight = Color(0xFFF9F9F9);
const greyDark = Color(0xFF5F6368);
const blueOriginal = Color(0xFF00AAE4);
const blueLight = Color(0xFF00BFFF);
const blueSuperLight = Color(0xFF1EC6FF);
const blueDark = Color(0xFF0088B6);
const blueSuperDark = Color(0xFF008080);
const orange = Color(0xFFFF551B);

const gradientBackgroundSplash = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    blueOriginal,
    white,
  ],
  stops: [
    0.1,
    1.0,
  ],
);