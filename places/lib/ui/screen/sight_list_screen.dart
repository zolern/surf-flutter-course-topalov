import 'package:flutter/material.dart';
import 'package:places/ui/res/text_styles.dart';

import 'sight_card.dart';
import 'package:places/mocks.dart';

class SightListScreen extends StatefulWidget {
  final String titleLine1 = "Список";
  final String titleLine2 = "интересных мест";

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
      appBar: MyAppBar(
        title: '${widget.titleLine1}\n${widget.titleLine2}',
        titleStyle: textLargeTitle_Secondary,
        padding: EdgeInsets.fromLTRB(16, 64, 16, 16),
        height: 48,
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Wrap(
          runSpacing: 16,
          children: _cards,
        ),
        padding: EdgeInsets.symmetric(horizontal: 16),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final String title;
  final TextStyle titleStyle;
  final EdgeInsets padding;

  const MyAppBar({
    Key key,
    this.height,
    this.padding: const EdgeInsets.all(16),
    this.title = "",
    this.titleStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Align(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: padding,
          child: Text(title, style: titleStyle),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height + padding.vertical);
}
