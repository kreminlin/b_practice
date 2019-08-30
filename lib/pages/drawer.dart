import 'package:b_practice/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Drawer1 extends StatelessWidget {
  const Drawer1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black38,
              ),
              accountEmail: Text('B币：8000.8    硬币：46820.5'),
              accountName: Container(
                child: Row(
                  children: <Widget>[
                    Text(
                      'Kreminlin',
                      style: TextStyle(fontSize: ScreenUtil().setSp(36.0)),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15.0),
                      padding: EdgeInsets.all(2.0),
                      height: ScreenUtil().setHeight(40),
                      width: ScreenUtil().setWidth(55),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.pink),
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      ),
                      child: Text(
                        'Lv6',
                        style: TextStyle(
                            color: Colors.pink,
                            fontSize: ScreenUtil().setSp(25.0)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15.0),
                      padding: EdgeInsets.all(2.0),
                      height: ScreenUtil().setHeight(45),
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      ),
                      child: Text(
                        '正式会员',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: ScreenUtil().setSp(25.0)),
                      ),
                    ),
                  ],
                ),
              ),
              currentAccountPicture: ClipOval(
                child: Image.asset('images/longnv5.jpeg'),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: ScreenUtil().setHeight(880),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(1.0),
                        child: ListTile(
                          title: Column(
                            children: <Widget>[
                              Container(
                                width: ScreenUtil().setWidth(600),
                                padding: EdgeInsets.all(3.0),
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      '我的大会员',
                                      style: TextStyle(
                                          color: Colors.pink,
                                          fontSize: ScreenUtil().setSp(35)),
                                    ),
                                    Text('   '),
                                    Text(
                                      '了解更多权益',
                                      style: TextStyle(
                                          color: Colors.black38,
                                          fontSize: ScreenUtil().setSp(28)),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(3.0),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '开通大会员畅看番剧国创',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.black38,
                                      fontSize: ScreenUtil().setSp(32)),
                                ),
                              ),
                            ],
                          ),
                          trailing: Icon(
                            Icons.arrow_right,
                            size: 45.0,
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.black38,
                      ),
                      Container(
                        padding: EdgeInsets.all(3.0),
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Container(
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    '500万',
                                    style: TextStyle(
                                        color: Colors.black38,
                                        fontSize: ScreenUtil().setSp(30.0)),
                                  ),
                                  Text(
                                    '关注',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Colors.black38,
                                        fontSize: ScreenUtil().setSp(32)),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    '1个亿',
                                    style: TextStyle(
                                        color: Colors.black38,
                                        fontSize: ScreenUtil().setSp(30.0)),
                                  ),
                                  Text(
                                    '粉丝',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Colors.black38,
                                        fontSize: ScreenUtil().setSp(32)),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    '7',
                                    style: TextStyle(
                                        color: Colors.black38,
                                        fontSize: ScreenUtil().setSp(30.0)),
                                  ),
                                  Text(
                                    '动态',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Colors.black38,
                                        fontSize: ScreenUtil().setSp(32)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.black38,
                      ),
                      ListTile(
                        leading: Icon(Icons.home),
                        title: Text(
                          '首页',
                          style: TextStyle(fontSize: ScreenUtil().setSp(36.0)),
                        ),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => HomeFragment()));
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.access_alarm),
                        title: Text(
                          '历史纪录',
                          style: TextStyle(fontSize: ScreenUtil().setSp(36.0)),
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.file_download),
                        title: Text(
                          '下载管理',
                          style: TextStyle(fontSize: ScreenUtil().setSp(36.0)),
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.star),
                        title: Text(
                          '我的收藏',
                          style: TextStyle(fontSize: ScreenUtil().setSp(36.0)),
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.watch_later),
                        title: Text(
                          '稍后再看',
                          style: TextStyle(fontSize: ScreenUtil().setSp(36.0)),
                        ),
                        onTap: () {},
                      ),
                      Divider(color: Colors.black),
                      ListTile(
                        leading: Icon(Icons.file_upload),
                        title: Text(
                          '投稿',
                          style: TextStyle(fontSize: ScreenUtil().setSp(36.0)),
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.lightbulb_outline),
                        title: Text(
                          '创作中心',
                          style: TextStyle(fontSize: ScreenUtil().setSp(36.0)),
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.access_alarm),
                        title: Text(
                          '热门活动',
                          style: TextStyle(fontSize: ScreenUtil().setSp(36.0)),
                        ),
                        onTap: () {},
                      ),
                      Divider(color: Colors.black),
                      ListTile(
                        leading: Icon(Icons.timeline),
                        title: Text(
                          '直播中心',
                          style: TextStyle(fontSize: ScreenUtil().setSp(36.0)),
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.stars),
                        title: Text(
                          'BW成就',
                          style: TextStyle(fontSize: ScreenUtil().setSp(36.0)),
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.sd_card),
                        title: Text(
                          '免流量服务',
                          style: TextStyle(fontSize: ScreenUtil().setSp(36.0)),
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.portrait),
                        title: Text(
                          '青少年模式',
                          style: TextStyle(fontSize: ScreenUtil().setSp(36.0)),
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.list),
                        title: Text(
                          '我的订单',
                          style: TextStyle(fontSize: ScreenUtil().setSp(36.0)),
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.shopping_cart),
                        title: Text(
                          '会员购中心',
                          style: TextStyle(fontSize: ScreenUtil().setSp(36.0)),
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.people_outline),
                        title: Text(
                          '联系客服',
                          style: TextStyle(fontSize: ScreenUtil().setSp(36.0)),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: ScreenUtil().setHeight(50),
              child: _stackbar(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _stackbar() {
    return Container(
      height: ScreenUtil().setHeight(120),
      decoration: BoxDecoration(
        border: Border(top: BorderSide(width: 1.0, color: Colors.black38)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
              onTap: () {},
              child: Container(
                height: ScreenUtil().setHeight(55),
                width: ScreenUtil().setWidth(120),
                padding: EdgeInsets.all(2.0),
                margin: EdgeInsets.only(left: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Icon(Icons.settings),
                    Text(
                      '设置',
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(27),
                          color: Colors.black87),
                    )
                  ],
                ),
              )),
          InkWell(
              onTap: () {},
              child: Container(
                height: ScreenUtil().setHeight(55),
                width: ScreenUtil().setWidth(120),
                padding: EdgeInsets.all(2.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Icon(Icons.invert_colors),
                    Text(
                      '主题',
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(27),
                          color: Colors.black87),
                    )
                  ],
                ),
              )),
          InkWell(
              onTap: () {},
              child: Container(
                height: ScreenUtil().setHeight(55),
                width: ScreenUtil().setWidth(120),
                padding: EdgeInsets.all(2.0),
                margin: EdgeInsets.only(right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Icon(Icons.cloud_off),
                    Text(
                      '夜间',
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(27),
                          color: Colors.black87),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
