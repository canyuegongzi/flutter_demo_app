import 'package:flutter/material.dart';

class AppBarAction extends StatefulWidget {
  // 关键字
  String inputKeyword;
  // 选项
  List<Widget> Action = [];
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return null;
  }

  Widget _buildAction(String title) {
    return Text(title);
  }
}
