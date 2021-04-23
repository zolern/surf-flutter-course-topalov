import 'package:flutter/material.dart';

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
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        shadowColor: Colors.transparent,
        title: Padding(
          child: RichText(
            text: TextSpan(
              text: widget.titleLine1.substring(0, 1),
              style: TextStyle(
                  color: Colors.green,
                  fontFamily: "RobotoRegular",
                  fontSize: 32.0,
                  fontWeight: FontWeight.w700,
                  height: 1.125),
              children: [
                TextSpan(text: widget.titleLine1.substring(1), style: TextStyle(color: Colors.black)),
                TextSpan(text: "\n${widget.titleLine2.substring(0, 1)}", style: TextStyle(color: Colors.yellow)),
                TextSpan(text: widget.titleLine2.substring(1), style: TextStyle(color: Colors.black))
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
