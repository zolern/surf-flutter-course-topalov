import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animations.dart';
import 'package:places/ui/res/colors.dart';
import 'package:places/ui/res/text_styles.dart';
import 'package:places/ui/res/decorations.dart';

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
        sightDesc(sight),
      ],
    );
  }
}

Widget sightImage(Sight data) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: borderTopRounded,
      gradient: bgLinearGradient,
    ),
    height: 96,
    child: Stack(
      fit: StackFit.expand,
      children: [
        ClipRRect(
          borderRadius: borderTopRounded,
          child: Image.network(
            data.url,
            fit: BoxFit.cover,
            color: Colors.black.withOpacity(0.4),
            colorBlendMode: BlendMode.multiply,
            loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
              return (loadingProgress == null)
                  ? child
                  : Align(
                      alignment: Alignment.center,
                      child: CircularProgressIndicator(
                        value: loadingProgress.cumulativeBytesLoaded / (loadingProgress.expectedTotalBytes ?? 1),
                        valueColor: AlwaysStoppedAnimation<Color>(colorWHITEAccent),
                        backgroundColor: Colors.transparent,
                        strokeWidth: 6,
                      ),
                    );
            },
          ),
        ),
        Positioned(
          top: 16,
          left: 16,
          child: Text(
            data.type,
            style: textSmallBold_White,
            textAlign: TextAlign.left,
          ),
        ),
        Positioned(
          top: 16,
          right: 16,
          child: Image.asset(
            'res/images/icon_heart.png',
            width: 24,
            height: 24,
            fit: BoxFit.fill,
          ),
        )
      ],
    ),
  );
}

Widget sightDesc(Sight data) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: borderBottomRounded,
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
