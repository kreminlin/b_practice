import 'package:flutter/material.dart';
import 'package:b_practice/dart.dart';
import 'drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DongTaiPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DongTaiPageState();
  }
}

class _DongTaiPageState extends State<DongTaiPage> {
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
              Rowshow(),
              SearchMessage(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _topimage1() {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Drawer1()));
      },
      child: Container(
        padding: EdgeInsets.all(3.0),
        margin: EdgeInsets.only(left: 1.0),
        child: ClipOval(
          child: Image.asset("images/longnv5.jpeg"),
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
        width: 250,
        height: 35,
        child: Text(
          '动态',
          style: TextStyle(fontSize: 22.0),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _topimageList() {
    return Container(
      padding: EdgeInsets.all(2.0),
      margin: EdgeInsets.only(left: 15.0),
      alignment: Alignment.centerRight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.wb_cloudy,
            ),
          ),
        ],
      ),
    );
  }
}

//Text
class Rowshow extends StatelessWidget {
  List<String> rowshow = ['视频', '综合', '热门'];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 1.0, color: Colors.black26)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          InkWell(
            onTap: () {},
            child: Text(
              '视频',
              style: TextStyle(fontSize: ScreenUtil().setSp(36.0)),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Text(
              '综合',
              style: TextStyle(fontSize: ScreenUtil().setSp(36.0)),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Text(
              '热门',
              style: TextStyle(fontSize: ScreenUtil().setSp(36.0)),
            ),
          ),
        ],
      ),
    );
  }
}

//Search
class SearchMessage extends StatelessWidget {
  const SearchMessage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          _searchclick(),
          Divider(color: Colors.black54),
          Mydingyue(),
          BozhuDongtaiItem(),
        ],
      ),
    );
  }

  Widget _searchclick() {
    return InkWell(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(3.0),
        margin: EdgeInsets.only(left: 5.0, right: 5.0, top: 5.0),
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        height: ScreenUtil().setHeight(70.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            IconButton(
              alignment: Alignment.center,
              onPressed: () {},
              icon: Icon(Icons.search),
              iconSize: 20.0,
            ),
            Text(
              '查找精彩动态内容......',
              style: TextStyle(
                  color: Colors.black38, fontSize: ScreenUtil().setSp(25.0)),
            ),
          ],
        ),
      ),
    );
  }
}

//我订阅的话题
class Mydingyue extends StatelessWidget {
  const Mydingyue({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(160.0),
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(
          width: 1.0,
          color: Colors.black38,
        ),
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _mydingyue1(),
          _mydingyue2(),
        ],
      ),
    );
  }

  Widget _mydingyue1() {
    return Container(
      height: ScreenUtil().setHeight(50.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
            onTap: () {},
            child: Container(
              height: ScreenUtil().setHeight(50),
              width: ScreenUtil().setWidth(280),
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 1.0),
              padding: EdgeInsets.all(2.0),
              child: Text('我订阅的话题'),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              // height: ScreenUtil().setHeight(80),
              color: Colors.black12,
              width: ScreenUtil().setWidth(450),
              margin: EdgeInsets.only(left: 1.0),
              padding: EdgeInsets.all(1.0),
              child: Row(
                children: <Widget>[
                  Text(
                    '#A.I.Channel：【Live】sum in the holiday',
                    style: TextStyle(
                      color: Colors.black38,
                      fontSize: ScreenUtil().setSp(20.0),
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Icon(Icons.arrow_right)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _mydingyue2() {
    return Container(
        height: ScreenUtil().setHeight(50.0),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: titles3.length,
          itemBuilder: (context, index) {
            return _mydingyueItem(index);
          },
        ));
  }

  Widget _mydingyueItem(index) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
          color: Colors.black12,
        ),
        height: ScreenUtil().setHeight(50),
        width: ScreenUtil().setWidth(230),
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: 3.0, right: 3.0),
        padding: EdgeInsets.all(2.0),
        child: Text('#${titles3[index]}#'),
      ),
    );
  }
}

//博主动态页面
class BozhuDongtaiItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 500,
        padding: EdgeInsets.all(3.0),
        color: Colors.white,
        child: ListView.builder(
          itemCount: images.length,
          itemBuilder: (context, index) {
            return _dongtaiItem(index);
          },
        ));
  }

  Widget _dongtaiItem(index) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(3.0),
        margin: EdgeInsets.only(top: 3.0, bottom: 3.0),
        decoration: BoxDecoration(
            border:
                Border(bottom: BorderSide(width: 1.0, color: Colors.black38))),
        child: Container(
          child: Column(
            children: <Widget>[
              _imagecontainer(index),
              _messageVideoShow(index),
              _messageVideoShowBottom(index),
            ],
          ),
        ),
      ),
    );
  }

  Widget _imagecontainer(index) {
    return Container(
      child: Row(
        children: <Widget>[
          ClipOval(
              child: SizedBox(
            width: 60,
            height: 60,
            child: Image.network(
              '${images[index]}',
              fit: BoxFit.fitHeight,
            ),
          )),
          Container(
            height: 60,
            width: 280,
            margin: EdgeInsets.only(left: 8.0),
            padding: EdgeInsets.only(top: 7.0),
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Kreminlin',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: ScreenUtil().setSp(35.0)),
                ),
                Text(
                  '1小时前·投稿了视频',
                  style: TextStyle(
                      fontSize: ScreenUtil().setSp(25.0),
                      color: Colors.black38),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          Container(
            height: 70,
            alignment: Alignment.topCenter,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
              iconSize: 25.0,
            ),
          ),
        ],
      ),
    );
  }

  Widget _messageVideoShow(index) {
    return Container(
      height: ScreenUtil().setHeight(470),
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(3.0),
            child: Text(
              '#经验分享##制作过程##AE#',
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(30.0), color: Colors.lightBlue),
            ),
          ),
          Container(
            height: ScreenUtil().setHeight(350),
            width: ScreenUtil().setWidth(1334),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
            padding: EdgeInsets.all(3.0),
            child: Image.network(
              '${images[index]}',
              fit: BoxFit.fill,
            ),
          ),
          Container(
            width: ScreenUtil().setWidth(1334),
            padding: EdgeInsets.all(5.0),
            margin: EdgeInsets.only(left: 5.0),
            child: Text(
              '${titles[index]}',
              style: TextStyle(fontWeight: FontWeight.w600),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  Widget _messageVideoShowBottom(index) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          InkWell(
            onTap: () {},
            child: Row(
              children: <Widget>[
                Icon(Icons.share),
                Text(' '),
                Text('3'),
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: Row(
              children: <Widget>[
                Icon(Icons.message),
                Text(' '),
                Text('3'),
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: Row(
              children: <Widget>[
                Icon(Icons.done),
                Text(' '),
                Text('3'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
