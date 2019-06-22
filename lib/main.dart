import 'package:flutter/material.dart';
import './home/home_screen.dart';
import './constant/color_style.dart';

void main() => runApp(MaterialApp(
    title: '农信',
    theme: ThemeData.light().copyWith(
        primaryColor: Color(ColorStyle.AppBarBackColor),
        cardColor: Color(
          ColorStyle.AppBarColor,
        )),
    home: HomeScreen()));
