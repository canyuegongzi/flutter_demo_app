import 'package:flutter/material.dart';

class AgricultureAccount extends StatefulWidget {
  @override
  AgricultureAccountState createState() => new AgricultureAccountState();
}

class AgricultureAccountState extends State<AgricultureAccount> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      //宽度
      width: 10.0,
      //高度
      height: 10.0,
      // 盒子样式
      decoration: new BoxDecoration(
        color: Colors.green,
        //设置Border属性给容器添加边框
        border: new Border.all(
          //为边框添加颜色
          color: Colors.white,
          width: 0.0, //边框宽度
        ),
      ),
      child: Text('这是记账的页面'),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void didUpdateWidget(AgricultureAccount oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}
