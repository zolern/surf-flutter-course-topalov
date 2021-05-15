import 'package:flutter/material.dart';
import 'package:places/ui/res/text_styles.dart';

import 'sight_card.dart';

import 'package:places/mocks.dart';

class SightListScreen extends StatefulWidget {
  final String titleLine1 = "Список";
  final String titleLine2 = "интересных мест";
  final double paddingTop = 40.0;

  SightListScreen({Key key}) : super(key: key);

  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  List<SightCard> _cards = [];

  _SightListScreenState() {
    _cards = mocks.map((sight) => SightCard(sight)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: Container(
          child: Text(
            '${widget.titleLine1}\n${widget.titleLine2}',
            style: textLargeTitle_Secondary,
            textAlign: TextAlign.left,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          padding: EdgeInsets.fromLTRB(0.0, widget.paddingTop, 0.0, 16.0),
        ),
        toolbarHeight: 88.0 + widget.paddingTop,
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Wrap(
          runSpacing: 16,
          children: _cards,
        ),
        padding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
      ),
    );
  }
}
