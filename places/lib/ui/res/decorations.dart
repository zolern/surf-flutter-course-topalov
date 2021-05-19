import 'package:flutter/material.dart';

const BorderRadius borderTopRounded = const BorderRadius.only(
      topLeft: Radius.circular(16),
      topRight: Radius.circular(16),
      bottomLeft: Radius.zero,
      bottomRight: Radius.zero,
    ),
    borderBottomRounded = const BorderRadius.only(
      topLeft: Radius.zero,
      topRight: Radius.zero,
      bottomLeft: Radius.circular(16),
      bottomRight: Radius.circular(16),
    );
