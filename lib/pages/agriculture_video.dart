import 'package:flutter/material.dart';

class AgricultureVideo extends StatefulWidget {
  @override
  AgricultureVideoState createState() => new AgricultureVideoState();
}

class AgricultureVideoState extends State<AgricultureVideo> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      //宽度
      width: 10.0,
      //高度
      height: 10.0,
      // 盒子样式
      decoration: new BoxDecoration(
        color: Colors.blueGrey,
        //设置Border属性给容器添加边框
        border: new Border.all(
          //为边框添加颜色
          color: Colors.white,
          width: 0.0, //边框宽度
        ),
      ),
      child: Text('这是农视的页面'),
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
  void didUpdateWidget(AgricultureVideo oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}
