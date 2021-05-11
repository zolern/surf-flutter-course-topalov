import 'dart:core';

import 'package:flutter/material.dart';
import 'package:places/ui/res/colors.dart';
import 'package:places/ui/res/text_styles.dart';

import 'package:places/domain/sight.dart';

class SightDetails extends StatelessWidget {
  final Sight sight;

  SightDetails(this.sight);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      color: bgDescription2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          sightImage(sight),
          sightDesc(sight),
        ],
      ),
    );
  }
}

Widget sightImage(Sight data) {
  return Container(
    color: Colors.blue,
    height: 360,
    alignment: Alignment.topLeft,
    padding: EdgeInsets.fromLTRB(16, 36, 16, 16),
    child: MockButton(
      width: 32,
      height: 32,
      color: Colors.white,
      text: '<',
      style: textDetailsTitle,
    ),
  );
}

Widget sightDesc(Sight data) {
  return Container(
    color: Colors.transparent,
    alignment: Alignment.topLeft,
    padding: EdgeInsets.all(16),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          data.name,
          style: textDetailsTitle,
          textAlign: TextAlign.left,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          data.type,
          style: textDetailsType,
          textAlign: TextAlign.left,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: 24),
        Text(
          data.details,
          style: textDetailsDesc,
        ),
        SizedBox(height: 24),
        MockButton(
          height: 40,
          color: Colors.green,
          text: 'Построить маршрут'.toUpperCase(),
          style: textSightImage,
        ),
        SizedBox(height: 24),
        const Divider(
          thickness: 0.8,
          indent: 0,
          endIndent: 0,
          color: lineInactiveBlack,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MockButton(
              height: 18,
              text: '[#] Запланировать',
              style: textDetailsDesc,
            ),
            MockButton(
              height: 18,
              text: '<3 В избранное',
              style: textDetailsDesc,
            ),
          ],
        )
      ],
    ),
  );
}

Widget MockButton({double width, double height, Color color: Colors.transparent, String text, TextStyle style}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: color,
    ),
    alignment: Alignment.center,
    width: width,
    height: height,
    child: Text(
      text,
      style: style,
    ),
  );
}
