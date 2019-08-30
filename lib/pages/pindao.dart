import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './pindao_pages/RowNavigatorList.dart';
import 'drawer.dart';
import '../dart.dart';

class PingDaoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PingDaoPageState();
  }
}

class _PingDaoPageState extends State<PingDaoPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.pinkAccent),
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              _topimage1(),
              _topsText(),
              _topimageList(),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              RowNavigatorList(),
              MeiShiRecommend(),
              GamesRecommend(),
              SearchMore(),
              NavigatorList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _topimage1() {
    return Container(
      padding: EdgeInsets.all(3.0),
      margin: EdgeInsets.only(left: 1.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Drawer1()));
        },
        child: ClipOval(
          child: Image.asset(
            "images/longnv5.jpeg",
          ),
        ),
      ),
    );
  }

  Widget _topsText() {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(2.0),
        alignment: Alignment.center,
        width: 220,
        height: 35,
        //margin: EdgeInsets.only(left: 40.0),
        child: Text(
          '频道',
          style: TextStyle(fontSize: 22.0),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _topimageList() {
    return Container(
      padding: EdgeInsets.all(2.0),
      margin: EdgeInsets.only(left: 2.0),
      alignment: Alignment.centerRight,
      child: Row(
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_downward),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
            ),
          ),
        ],
      ),
    );
  }
}

class RowNavigatorList extends StatelessWidget {
  final List<String> rowNavigatorList = [
    '广场',
    '美食',
    '热门游戏',
    '苹果发布会',
    '二麦科技',
    '鸿蒙OS',
    '时尚周刊',
    '人间一串'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.0,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 1.0, color: Colors.black26)),
        color: Colors.white,
      ),
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(3.0),
            margin: EdgeInsets.only(top: 2.0),
            height: 50.0,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: rowNavigatorList.length,
              itemBuilder: (context, index) {
                return Row(
                  children: <Widget>[
                    _text(index, rowNavigatorList[index]),
                  ],
                );
              },
            ),
          ),
          _textImage(context),
        ],
      ),
    );
  }

  Widget _text(int index, String item) {
    return InkWell(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.fromLTRB(5.0, 6.0, 5.0, 6.0),
        child: Text(
          item,
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }

  Widget _textImage(context) {
    return IconButton(
      onPressed: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => RowNavigatorListnote()));
      },
      icon: Icon(Icons.menu),
      iconSize: 28.0,
    );
  }
}

//订阅推送
class MeiShiRecommend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(470),
      padding: EdgeInsets.all(3.0),
      margin: EdgeInsets.only(top: 1.0),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 1.0, color: Colors.black26)),
      ),
      child: Column(
        children: <Widget>[
          _textwrite(),
          _videioShowList(context),
        ],
      ),
    );
  }

  //美食订阅文字
  Widget _textwrite() {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(3.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  '美食',
                  style: TextStyle(fontSize: 18.0),
                ),
                Text(
                  '76.6万人订阅',
                  style: TextStyle(fontSize: 12.0, color: Colors.black54),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(3.0),
              height: 35.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(8.0),
                ),
                border: Border.all(color: Colors.pink),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(
                    Icons.add,
                    size: 18.0,
                    color: Colors.pink,
                  ),
                  Text(
                    '订阅',
                    style: TextStyle(color: Colors.pink, fontSize: 18.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

//视频推送
  Widget _videioShowList(index) {
    return Container(
        height: 180,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: 2,
          itemBuilder: (context, index) {
            return _recommendListItem(index);
          },
        ));
  }

  Widget _recommendListItem(index) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 70,
        padding: EdgeInsets.all(3.0),
        margin: EdgeInsets.all(2.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
        child: Column(
          children: <Widget>[
            Container(
              height: ScreenUtil().setHeight(250.0),
              width: ScreenUtil().setWidth(360),
              padding: EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
              ),
              child: Image.network(
                '${imagesList1[index]}',
                fit: BoxFit.fill,
              ),
            ),
            Text(
              '${textLists1[index]}',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}

//订阅推送
class GamesRecommend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(470),
      padding: EdgeInsets.all(3.0),
      margin: EdgeInsets.only(top: 1.0),
      child: Column(
        children: <Widget>[
          _textwrite2(),
          _videioShowList2(context),
        ],
      ),
    );
  }

  //游戏订阅文字
  Widget _textwrite2() {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(3.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  '热门游戏',
                  style: TextStyle(fontSize: 18.0),
                ),
                Text(
                  '260.6万人订阅',
                  style: TextStyle(fontSize: 12.0, color: Colors.black54),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(3.0),
              height: 35.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(8.0),
                ),
                border: Border.all(color: Colors.pink),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(
                    Icons.add,
                    size: 18.0,
                    color: Colors.pink,
                  ),
                  Text(
                    '订阅',
                    style: TextStyle(color: Colors.pink, fontSize: 18.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

//视频推送
  Widget _videioShowList2(index) {
    return Container(
        height: 180,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: 2,
          itemBuilder: (context, index) {
            return _recommendListItem2(index);
          },
        ));
  }

  Widget _recommendListItem2(index) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 70,
        padding: EdgeInsets.all(3.0),
        margin: EdgeInsets.all(2.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        child: Column(
          children: <Widget>[
            Container(
              height: ScreenUtil().setHeight(250.0),
              width: ScreenUtil().setWidth(360),
              padding: EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              child: Image.network(
                '${imagesList2[index]}',
                fit: BoxFit.fill,
              ),
            ),
            Text(
              '${textLists2[index]}',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}

//发现更多
class SearchMore extends StatelessWidget {
  const SearchMore({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 1.0, color: Colors.black26)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('发现更多频道',
              style: TextStyle(color: Colors.pinkAccent, fontSize: 18.0)),
          Icon(
            Icons.arrow_right,
            color: Colors.pinkAccent,
            size: 30.0,
          ),
        ],
      ),
    );
  }
}

//频道导航栏
class NavigatorList extends StatelessWidget {
  const NavigatorList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(450),
      padding: EdgeInsets.all(3.0),
      margin: EdgeInsets.only(top: 2.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1.5,
          crossAxisCount: 4,
        ),
        itemCount: titles3.length,
        itemBuilder: (context, index) {
          return _navigatorItem(index);
        },
      ),
    );
  }

  Widget _navigatorItem(index) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: <Widget>[
          Icon(Icons.account_box),
          Text(
            '${titles3[index]}',
            style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
