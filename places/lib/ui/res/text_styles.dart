import 'package:flutter/painting.dart';
import 'package:places/ui/res/colors.dart';

/// Стили текстов

TextStyle _text = const TextStyle(
      fontFamily: "Roboto",
      fontStyle: FontStyle.normal,
      decoration: TextDecoration.none,
    ),

// Large Title

    textLargeTitle = _text.copyWith(
      fontWeight: FontWeight.w700,
      fontSize: 32.0,
      height: 1.12,
    ),
    textTitle = _text.copyWith(
      fontWeight: FontWeight.bold,
      fontSize: 24.0,
      height: 1.20,
    ),

// Subtitle

    textSubtitle = _text.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 18.0,
      height: 1.33,
    ),

// Text

    textText = _text.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 16.0,
      height: 1.25,
    ),

// Small

    textSmall = _text.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 14.0,
      height: 1.29,
    ),
    textSmallBold = textSmall.copyWith(
      fontWeight: FontWeight.w700,
    ),

// Button

    textButton = textSmallBold.copyWith(
      letterSpacing: 1.5, // 0.03em
    ),

// Styles with colors

    textLargeTitle_Secondary = textLargeTitle.copyWith(color: textWHITESecondary),
    textText_Secondary = textText.copyWith(color: textWHITESecondary),
    textSmallBold_White = textSmallBold.copyWith(color: textWhite),
    textSmallBold_Secondary = textSmallBold.copyWith(color: textWHITESecondary),
    textSmall_Secondary = textSmall.copyWith(color: textWHITESecondary),
    textSmall_Secondary2 = textSmall.copyWith(color: textWHITESecondary2),
    textButton_Main = textButton.copyWith(color: textWHITEMain),
    textButton_White = textButton.copyWith(color: textWhite),
    textTitle_Secondary = textTitle.copyWith(color: textWHITESecondary);
