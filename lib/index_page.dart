import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart'; //cupertino风格组件;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:b_practice/provide/currentInex.dart';
import 'package:provide/provide.dart';
import './pages/member_page.dart';
import './pages/dongtai_page.dart';
import 'home_page.dart';
import './pages/pindao.dart';
import './pages/drawer.dart';

class IndexPage extends StatelessWidget {
  final List<BottomNavigationBarItem> bottomTabs = [
    //定义BottomNavigationBarItem底部导航条组件(图片，文字)
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), title: Text('首页')),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.ellipsis), title: Text('频道')),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.person_add), title: Text('动态')),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.shopping_cart), title: Text('会员购')),
  ];

  final List<Widget> tabBodies = [
    //数组选择需要进入的页面，按照0，1，2，3顺序
    HomeFragment(),
    PingDaoPage(),
    DongTaiPage(),
    MemberPage(),
  ];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 754, height: 1334)..init(context);
    //int currentIndex = 0;
    return Container(
      decoration: BoxDecoration(
          border: Border(top: BorderSide(width: 2.0, color: Colors.black))),
      child: Provide<CurrentIndexProvide>(builder: (context, child, val) {
        int currentIndex =
            Provide.value<CurrentIndexProvide>(context).currentIndex;
        return Scaffold(
          backgroundColor: Color.fromRGBO(244, 245, 244, 1.0),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed, //用于显示bottom的类型;
            currentIndex: currentIndex, //当前索引，用来切换按钮控制;
            items: bottomTabs, //对应List<BottomNavigationBarItem>上文，包含图片，文字信息;
            onTap: (index) {
              Provide.value<CurrentIndexProvide>(context).changeIndex(index);
            },
          ),
          body: IndexedStack(
            //保持页面状态;
            index: currentIndex,
            children: tabBodies,
          ),
          drawer:Drawer(
            child: Drawer1(),
          )
        );
      }),
    );
  }
}
