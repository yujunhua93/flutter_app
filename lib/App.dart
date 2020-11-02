

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/MyPage.dart';
import 'package:flutter_app_upgrade/flutter_app_upgrade.dart';
import 'HomePage.dart';

class App extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new AppState();
  }
}

class AppState extends State<App>{

  /// tab选中的文本颜色
  Color _colorTabSelect = Colors.black;

  /// tab未选中的文本颜色
  Color _colorTabNormal = Colors.black38;

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
      return new Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            //设置tab选中和未选中的属性
            selectedItemColor: _colorTabSelect,
            unselectedItemColor: _colorTabNormal,
            selectedFontSize: 14,
            unselectedFontSize: 14,
            //tab点击事件
            onTap: (index) => {
              setState(() {
                _currentIndex = index;
              })
            },
            items: [
              BottomNavigationBarItem(
                  title: Text("首页"),
                  icon: _currentIndex == 0
                      ? Image.asset("images/ic_tab_strip_icon_feed_selected.png")
                      : Image.asset("images/ic_tab_strip_icon_feed.png")),
              BottomNavigationBarItem(
                  title: Text("社区"),
                  icon: _currentIndex == 1
                      ? Image.asset(
                      "images/ic_tab_strip_icon_follow_selected.png")
                      : Image.asset("images/ic_tab_strip_icon_follow.png")),
              BottomNavigationBarItem(
                  title: Text(
                    "",
                    style: TextStyle(fontSize: 0),
                  ),
                  icon: Image.asset("images/ic_home_public.png")),
              BottomNavigationBarItem(
                  title: Text("通知"),
                  icon: _currentIndex == 3
                      ? Image.asset(
                      "images/ic_tab_strip_icon_category_selected.png")
                      : Image.asset("images/ic_tab_strip_icon_category.png")),
              BottomNavigationBarItem(
                  title: Text("我的"),
                  icon: _currentIndex == 4
                      ? Image.asset(
                      "images/ic_tab_strip_icon_profile_selected.png")
                      : Image.asset("images/ic_tab_strip_icon_profile.png"))
            ]),
        //页面展示的内容
        body: _currentPage(),
      );
  }

  @override
  void initState() {
    AppUpgrade.appUpgrade(
      context,
      _checkAppInfo(),
      okBackgroundColors: [Colors.blue, Colors.lightBlue],
      iosAppId: 'id88888888',
    );
    super.initState();
  }

  /// 根据选中的tab显示对应的内容
  Widget _currentPage() {
    Widget page;
    switch (_currentIndex) {
      case 0:
        page = HomePage();
        break;
      case 1:
//        page = FeedPage();
        break;
      case 2:
//        page = PublishPage();
        break;
      case 3:
//        page = NoticePage();
        break;
      case 4:
        page = MyPage();
        break;
    }
    return page;
  }

  Future<AppUpgradeInfo> _checkAppInfo() async {
    //这里一般访问网络接口，将返回的数据解析成如下格式
    return Future.delayed(Duration(seconds: 1), () {
      return AppUpgradeInfo(
        title: '新版本V1.1.1',
        contents: [
          '1、支持立体声蓝牙耳机，同时改善配对性能',
          '2、提供屏幕虚拟键盘',
          '3、更简洁更流畅，使用起来更快',
          '4、修复一些软件在使用时自动退出bug',
          '5、新增加了分类查看功能'
        ],
        force: false,
      );
    });
  }
  
}