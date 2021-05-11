import 'dart:ui';

import 'package:flutter/material.dart';

// Семантические алиасы
// Пополняются по мере необходимости
// Используют только основную палитру
const Color textColorPrimary = _black,
    textColorWhite = _white,
    textColorSecondary = _white1,
    textColorSecondary2 = _white2,
    lineInactiveBlack = _lightBlack;

const Color bgDescription = _lightGray, bgDescription2 = _white;

// Основная палитра (http://www.color-blindness.com/color-name-hue/)
const Color _black = Color(0xFF000000),
    _white = Color(0xFFFFFFFF),
    _lightGray = Color(0xFFF5F5F5),
    _white1 = Color(0xFF3B3E5B),
    _white2 = Color(0xFF7C7E92),
    _lightBlack = Color.fromRGBO(124, 126, 146, 0.56);
