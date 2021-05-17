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
      color: bgDefault,
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
      style: textButton_Main,
    ),
  );
}

Widget sightDesc(Sight data) {
  return Container(
    color: Colors.transparent,
    padding: EdgeInsets.all(16),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          data.name,
          style: textTitle_Secondary,
          textAlign: TextAlign.left,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: 2),
        Wrap(
          spacing: 16,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Text(
              data.type,
              style: textSmallBold_Secondary,
              textAlign: TextAlign.left,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              data.note,
              style: textSmall_Secondary2,
              textAlign: TextAlign.left,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
        SizedBox(height: 24),
        Text(
          data.details,
          style: textSmall_Secondary,
        ),
        SizedBox(height: 24),
        MockButton(
          height: 40,
          color: Colors.green,
          text: 'Построить маршрут'.toUpperCase(),
          style: textButton_White,
        ),
        SizedBox(height: 24),
        const Divider(
          thickness: 0.8,
          indent: 0,
          endIndent: 0,
          color: colorSemiSecondary2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MockButton(
              height: 18,
              text: '[#] Запланировать',
              style: textSmall_Secondary,
            ),
            MockButton(
              height: 18,
              text: '<3 В избранное',
              style: textSmall_Secondary,
            ),
          ],
        )
      ],
    ),
  );
}

Widget MockButton({
  double? width,
  double? height,
  Color color: Colors.transparent,
  required String text,
  TextStyle? style,
}) {
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
