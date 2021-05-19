import 'dart:ui';

import 'package:flutter/material.dart';

// Семантические алиасы
const Color textWHITEGreen = _green,
    textWHITEMain = _luckyPoint,
    textWHITESecondary = _blueZodiac,
    textWHITESecondary2 = _slateGrey,
    textWHITEInactive = _slateGreySemiTransparent,
    textWhite = _white,
    textBLACKMain = _blackRussian;

const Color colorWHITEAccent = _green;

const Color bgBackground = _whiteSmoke, bgDefault = _white;

const LinearGradient bgLinearGradient = const LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    _luckyPoint,
    _blueZodiacTransparent,
  ],
);

// Основная палитра (http://www.color-blindness.com/color-name-hue/)
const Color _green = Color(0xFF4CAF50),
    _luckyPoint = Color(0xFF252849),
    _blueZodiac = Color(0xFF3B3E5B),
    _blueZodiacTransparent = const Color.fromRGBO(0x3B, 0x3E, 0x5B, 0.08),
    _white = Color(0xFFFFFFFF),
    _whiteSmoke = Color(0xFFF5F5F5),
    _slateGrey = Color(0xFF7C7E92),
    _slateGreySemiTransparent = const Color.fromRGBO(0x7C, 0x7E, 0x92, 0.56),
    _blackRussian = Color(0xFF21222C);
