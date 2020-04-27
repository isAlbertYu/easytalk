import 'package:flutter/material.dart';

///
/// 看点：
/// EdgeInsets.symmetric
/// Flexible
///

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _textEditingController =
      TextEditingController(); //管理输入字段

  /*
  处理提交动作
   */
  void _handleSubmitted(String text) {
    _textEditingController.clear();
  }

  ///构建聊天输入文本框
  Widget _buildTextComposer() {
    return IconTheme(
      data: IconThemeData(
        color: Theme.of(context).accentColor,
      ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Flexible(
              child: Container(
//                color: Colors.red,
                child: TextField(
                  controller: _textEditingController,
                  onSubmitted: _handleSubmitted,
                  decoration: InputDecoration.collapsed(
                    hintText: "发送消息",
                  ),
                ),
              ),
            ),
            Container(
//              color: Colors.green,
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: IconButton(
                icon: Icon(Icons.send),
                onPressed: () {
                  _handleSubmitted(_textEditingController.text);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("谈天说地"),
      ),
      body: _buildTextComposer(),
    );
  }
}
