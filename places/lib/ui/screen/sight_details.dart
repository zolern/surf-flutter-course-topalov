import 'dart:core';

import 'package:flutter/material.dart';
import 'package:places/ui/res/colors.dart';
import 'package:places/ui/res/text_styles.dart';

import 'package:places/domain/sight.dart';

class SightDetailsScreen extends StatefulWidget {
  final Sight sight;

  SightDetailsScreen({Key? key, required this.sight}) : super(key: key);

  @override
  _SightDetailsScreenState createState() => _SightDetailsScreenState();
}

class _SightDetailsScreenState extends State<SightDetailsScreen> {
  _SightDetailsScreenState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        toolbarHeight: 360,
        flexibleSpace: sightImage(widget.sight),
      ),
      resizeToAvoidBottomInset: false,
      body: sightDesc(widget.sight),
    );
  }
}

Widget sightImage(Sight data) {
  return Container(
    decoration: BoxDecoration(
      gradient: bgLinearGradient,
    ),
    alignment: Alignment.topLeft,
    child: Stack(
      fit: StackFit.expand,
      children: [
        Image.network(
          data.url,
          fit: BoxFit.cover,
          color: Colors.black.withOpacity(0.4),
          colorBlendMode: BlendMode.multiply,
          loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
            return (loadingProgress == null)
                ? child
                : Align(
                    alignment: Alignment.bottomCenter,
                    child: LinearProgressIndicator(
                      value: loadingProgress.cumulativeBytesLoaded / (loadingProgress.expectedTotalBytes ?? 1),
                      valueColor: AlwaysStoppedAnimation<Color>(colorWHITEAccent),
                      backgroundColor: Colors.transparent,
                    ),
                  );
          },
        ),
        Positioned(
          top: 36,
          left: 16,
          child: IconButton(
            width: 32,
            height: 32,
            color: Colors.white,
            icon: 'back',
            text: '',
            style: textButton_Main,
          ),
        ),
      ],
    ),
  );
}

Widget sightDesc(Sight data) {
  return Container(
    color: Colors.transparent,
    padding: EdgeInsets.all(16),
    child: Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      runSpacing: 24,
      children: [
        Column(
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
          ],
        ),
        Text(
          data.details,
          style: textSmall_Secondary,
        ),
        IconButton(
          height: 48,
          color: Colors.green,
          icon: 'go',
          text: 'Построить маршрут'.toUpperCase(),
          style: textButton_White,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Divider(
              thickness: 0.8,
              indent: 0,
              endIndent: 0,
              color: textWHITEInactive,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  height: 40,
                  icon: 'calendar',
                  text: 'Запланировать',
                  style: textSmall_Inactive,
                ),
                IconButton(
                  height: 40,
                  icon: 'heart',
                  text: 'В избранное',
                  style: textSmall_Secondary,
                ),
              ],
            )
          ],
        ),
      ],
    ),
  );
}

Widget IconButton({
  double? width,
  double? height,
  required String icon,
  Color color: Colors.transparent,
  String text = '',
  TextStyle? style,
}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: color,
    ),
    alignment: Alignment.center,
    width: width,
    height: height,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'res/images/icon_$icon.png',
          width: 24,
          height: 24,
          fit: BoxFit.fill,
          color: style?.color,
        ),
        SizedBox(width: text != '' ? 10 : 0),
        Text(
          text,
          style: style,
        ),
      ],
    ),
  );
}
