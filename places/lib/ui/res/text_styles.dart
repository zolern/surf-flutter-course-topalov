import 'package:flutter/painting.dart';
import 'package:places/ui/res/colors.dart';

/// Стили текстов

TextStyle _text = const TextStyle(
      fontFamily: "Roboto",
      fontStyle: FontStyle.normal,
      color: textColorPrimary,
      decoration: TextDecoration.none,
    ),

//Light
    textLight = _text.copyWith(fontWeight: FontWeight.w300),

//Regular
    textRegular = _text.copyWith(fontWeight: FontWeight.normal),
    textRegular16 = textRegular.copyWith(fontSize: 16.0),

//Medium
    textMedium = _text.copyWith(fontWeight: FontWeight.w500),
    textMedium20 = textMedium.copyWith(fontSize: 20.0),

//Bold
    textBold = _text.copyWith(fontWeight: FontWeight.w700),

// AppBar
    textAppBar = _text.copyWith(
      fontWeight: FontWeight.bold,
      fontSize: 32.0,
      height: 1.125,
    ),

// Sight
    textSightImage = _text.copyWith(
      color: textColorWhite,
      fontWeight: FontWeight.w700,
      fontSize: 14.0,
      height: 1.29,
    ),
    textSightDesc1 = _text.copyWith(
      color: textColorSecondary,
      fontWeight: FontWeight.w500,
      fontSize: 16.0,
      height: 1.25,
    ),
    textSightDesc2 = textSightImage.copyWith(
      color: textColorSecondary2,
      fontWeight: FontWeight.w400,
    ),
    textDetailsTitle = textSightDesc1.copyWith(
      fontWeight: FontWeight.w700,
      fontSize: 24.0,
      height: 1.2,
    ),
    textDetailsType = textSightImage.copyWith(
      color: textColorSecondary,
    ),
    textDetailsDesc = textSightDesc2.copyWith(
      color: textColorSecondary,
    );
