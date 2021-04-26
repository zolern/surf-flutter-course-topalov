import 'package:flutter/material.dart';
import 'package:places/ui/res/text_styles.dart';
import 'package:places/ui/res/colors.dart';

class SightListScreen extends StatefulWidget {
  SightListScreen({Key key}) : super(key: key);

  final String titleLine1 = "Список";
  final String titleLine2 = "интересных мест";
  final double paddingTop = 40.0;

  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: Padding(
          child: RichText(
            text: TextSpan(
              text: widget.titleLine1.substring(0, 1),
              style: textAppBarAccent1,
              children: [
                TextSpan(text: widget.titleLine1.substring(1), style: textAppBar),
                TextSpan(text: "\n${widget.titleLine2.substring(0, 1)}", style: textAppBarAccent2),
                TextSpan(text: widget.titleLine2.substring(1), style: textAppBar)
              ],
            ),
            overflow: TextOverflow.ellipsis,
          ),
          padding: EdgeInsets.fromLTRB(0, widget.paddingTop, 0, 0.0),
        ),
        toolbarHeight: 72.0 + widget.paddingTop,
      ),
      resizeToAvoidBottomInset: false,
      body: Center(child: Text('body')),
    );
  }
}
