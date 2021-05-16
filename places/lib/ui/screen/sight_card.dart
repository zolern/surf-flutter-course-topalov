import 'dart:math';

import 'package:flutter/material.dart';
import 'package:places/ui/res/text_styles.dart';
import 'package:places/ui/res/colors.dart';

import 'package:places/domain/sight.dart';

class SightCard extends StatelessWidget {
  final Sight sight;

  SightCard(this.sight);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        sightImage(sight),
        SizedBox(height: 16),
        sightDesc(sight),
      ],
    );
  }
}

Widget sightImage(Sight data) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(16),
        bottomLeft: Radius.zero,
        bottomRight: Radius.zero,
      ),
      color: _getRandomColor(),
    ),
    height: 96,
    alignment: Alignment.topLeft,
    padding: EdgeInsets.all(16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          data.type,
          style: textSmallBold_White,
          textAlign: TextAlign.left,
        ),
        heartIcon(20),
      ],
    ),
  );
}

Widget heartIcon(double size) {
  return Container(
    height: size,
    width: size,
    color: Colors.red,
  );
}

Widget sightDesc(Sight data) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.zero,
        topRight: Radius.zero,
        bottomLeft: Radius.circular(16),
        bottomRight: Radius.circular(16),
      ),
      color: bgBackground,
    ),
    alignment: Alignment.topLeft,
    padding: EdgeInsets.all(16),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          data.name,
          style: textText_Secondary,
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 2),
        Text(
          data.note,
          style: textSmall_Secondary2,
          textAlign: TextAlign.left,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ),
  );
}

Color _getRandomColor() {
  int _RandomInt(int min, int max) => Random().nextInt(max - min + 1);
  return Color.fromARGB(0xff, _RandomInt(0x80, 0xff), _RandomInt(0x80, 0xff), _RandomInt(0x80, 0xff));
}
