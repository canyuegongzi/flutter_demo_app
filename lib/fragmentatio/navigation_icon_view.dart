import 'package:flutter/material.dart';

// 底部导航的数据结构
class NavigationIconView {
  // 文字描述
  final Widget _title;
  // 字体图标
  final IconData _icon;
  final IconData _activeIcon;
  final BottomNavigationBarItem item;
  NavigationIconView(
      {Key key, String title, IconData icon, IconData activeIcon})
      : _title = Text(title),
        _icon = icon,
        _activeIcon = activeIcon,
        item = new BottomNavigationBarItem(
          icon: Icon(icon, size: 50.0,),
          activeIcon: Icon(activeIcon),
          title: Text(title),
          backgroundColor: Colors.white,
        );
}
