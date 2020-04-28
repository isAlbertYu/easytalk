import 'package:flutter/material.dart';

///
/// 看点：
/// CircleAvatar
///

String _name="YULINGLANG";

class ChatMessage extends StatelessWidget {
  ChatMessage({this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 16),
            child: CircleAvatar(
              child: Text(_name[0]),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                _name,
                style: Theme.of(context).textTheme.subhead,
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: Text(this.text),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
