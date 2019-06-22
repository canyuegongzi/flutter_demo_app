import 'package:flutter/material.dart';
// 底部导航数据类型
import 'package:nong/fragmentatio/navigation_icon_view.dart';
import 'package:nong/fragmentatio/search.dart';
// 导入字体
import '../constant/font_style.dart';
// 导入颜色
import '../constant/color_style.dart';
// 导入页面
import '../pages/agriculture_account.dart';
import '../pages/agriculture_info.dart';
import '../pages/agriculture_mine.dart';
import '../pages/agriculture_video.dart';
import '../pages/agriculture_work.dart';

enum ActionItems { PUBLISH_WORD, PUBLISH_VIDEO, PUBLISH_QUESTION }

class HomeScreen extends StatefulWidget {
  final Widget child;

  HomeScreen({Key key, this.child}) : super(key: key);
  @override
  HomeScreenState createState() => new HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  // 底部导航视图的列表
  List<NavigationIconView> _navigationViews;
  // 页面的控制器
  PageController _pageController;
  // 当前页面的序号
  int _currentIndex = 0;
  // 页面集合
  List<Widget> _pages;
  // 输入框
  final TextEditingController _controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    // 初始化底部导航
    final BottomNavigationBar bottomNav = BottomNavigationBar(
      // 高亮的颜色
      fixedColor: const Color(ColorStyle.TabIconActive),
      // 组合导航选项
      items: _navigationViews.map((NavigationIconView view) {
        return view.item;
      }).toList(),
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      // 回掉
      onTap: (int index) {
        setState(() {
          // 设置页数
          _currentIndex = index;
          // 控制器控制页面
          _pageController.animateToPage(_currentIndex,
              duration: Duration(milliseconds: 200), curve: Curves.easeInOut);
        });
      },
    );
    return new Scaffold(
      appBar: PreferredSize(
          child: new AppBar(
            title: new Container(
              padding: EdgeInsets.only(left: 15.2),
              decoration: BoxDecoration(
                color: Color(ColorStyle.AppBarAddIconColor),
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0), //边角为30
                ),
              ),
              child: TextField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.search),
                      hintText: '请输入关键词',
                      border: InputBorder.none,
                      fillColor: const Color(ColorStyle.AppBarAddIconColor))),
            ),
            actions: [
              PopupMenuButton(
                offset: const Offset(10.0, 55.0),
                itemBuilder: (BuildContext context) {
                  return <PopupMenuItem<ActionItems>>[
                    PopupMenuItem(
                      child: _buildPopupMunuItem(0xeb9e, "扫一扫"),
                      value: ActionItems.PUBLISH_WORD,
                    ),
                    PopupMenuItem(
                      child: _buildPopupMunuItem(0xeba3, "反馈"),
                      value: ActionItems.PUBLISH_VIDEO,
                    ),
                    PopupMenuItem(
                      child: _buildPopupMunuItem(0xeba3, "关于"),
                      value: ActionItems.PUBLISH_QUESTION,
                    ),
                  ];
                },
                icon: Icon(
                    IconData(
                      0xe6dc,
                      fontFamily: FontStyle.IconFontFamily,
                    ),
                    size: 22.0,
                    color: const Color(ColorStyle.AppBarAddIconColor)),
                onSelected: (ActionItems selected) {
                  print('点击的是$selected');
                },
              ),
              Container(width: 16.0),
            ],
          ),
          preferredSize: Size.fromHeight(55.0)),
      // 构建可滑动的pageview
      body: PageView.builder(
        itemBuilder: (BuildContext context, int index) {
          // 返回固定位置的页面
          return _pages[index];
        },
        controller: _pageController,
        itemCount: _pages.length,
        onPageChanged: (int index) {
          print('当前是第$index页');
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      bottomNavigationBar: bottomNav,
    );
  }

  // 初始化数据
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // 初始化页面数组
    _pages = [
      AgricultureInfo(),
      AgricultureVideo(),
      AgricultureAccount(),
      AgricultureVideo(),
      AgricultureMine(),
    ];
    // 初始化地步导航的数组
    _navigationViews = [
      NavigationIconView(
          title: '消息',
          // 图标
          icon: IconData(
            0xe69e,
            fontFamily: FontStyle.IconFontFamily,
          ),
          // 高亮的图标
          activeIcon: IconData(
            0xe69e,
            fontFamily: FontStyle.IconFontFamily,
          )),
      NavigationIconView(
          title: '应用',
          icon: IconData(
            0xe646,
            fontFamily: FontStyle.IconFontFamily,
          ),
          activeIcon: IconData(
            0xe646,
            fontFamily: FontStyle.IconFontFamily,
          )),
      NavigationIconView(
          title: '动态',
          icon: IconData(
            0xe646,
            fontFamily: FontStyle.IconFontFamily,
          ),
          activeIcon: IconData(
            0xe646,
            fontFamily: FontStyle.IconFontFamily,
          )),
      NavigationIconView(
          title: '我的',
          icon: IconData(
            0xe607,
            fontFamily: FontStyle.IconFontFamily,
          ),
          activeIcon: IconData(
            0xe607,
            fontFamily: FontStyle.IconFontFamily,
          )),
    ];
    // 初始化页面的控制器
    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void didUpdateWidget(HomeScreen oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  /**
   * 构建下拉框的行样式
   * @params: iconName 字体图标的名称
   * @params: title  描述
   */
  _buildPopupMunuItem(int iconName, String title) {
    return Row(
      children: <Widget>[
        Icon(
            IconData(
              iconName,
              fontFamily: FontStyle.IconFontFamily,
            ),
            size: 22.0,
            color: const Color(ColorStyle.AppBarPopupMenuColor)),
        Container(width: 14.0),
        Text(title,
            style:
                TextStyle(color: const Color(ColorStyle.AppBarPopupMenuColor))),
      ],
    );
  }
}
