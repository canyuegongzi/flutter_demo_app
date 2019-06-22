import 'package:flutter/material.dart';
import 'package:nong/constant/color_style.dart';

class TextFieldAndCheckPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TextFieldAndCheckPageState();
}

class TextFieldAndCheckPageState extends State<TextFieldAndCheckPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('输入和选择'),
      ),
      body: TextField(
          decoration: InputDecoration(
              icon: Icon(Icons.search),
              hintText: '请输入关键词',
              filled: true,
              fillColor: const Color(ColorStyle.AppBarAddIconColor))),
    );
  }
}
