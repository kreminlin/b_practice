import 'package:flutter/material.dart';
import 'dart.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter/cupertino.dart';
import './pages/drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(new HomeFragment());

class HomeFragment extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeFragmentState();
  }
}

class _HomeFragmentState extends State<HomeFragment> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.pinkAccent),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: _topimage(),
          title: Row(
            children: <Widget>[
              _topsearch(),
              _topimageList(),
            ],
          ),
        ),
        body: ListView(
          children: <Widget>[
            NavigatorList(),
            ImageRecommend(swiperDataList: swiperDataList),
            VideoRecommend(),
            VideoShow(),
          ],
        ),
      ),
    );
  }

  Widget _topimage() {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Drawer1()));
      },
      child: Container(
          padding: EdgeInsets.all(1.0),
          child: SizedBox(
            height: 50,
            width: 50,
            child: ClipOval(
              child: Image.asset(
                "images/longnv5.jpeg",
              ),
            ),
          )),
    );
  }

  Widget _topsearch() {
    return Container(
      padding: EdgeInsets.all(2.0),
      alignment: Alignment.center,
      width: 150,
      height: 35,
      decoration: BoxDecoration(
        color: Colors.black26,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      margin: EdgeInsets.only(left: 10.0),
      child: Row(
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            iconSize: 22.0,
          ),
          Text(
            '',
            style: TextStyle(fontSize: 13.0),
          ),
        ],
      ),
    );
  }

  Widget _topimageList() {
    return Container(
      padding: EdgeInsets.all(2.0),
      margin: EdgeInsets.only(left: 2.0),
      alignment: Alignment.center,
      child: Row(
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Image.asset("images/music_icon_subject.png"),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings_applications),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message,
            ),
          ),
        ],
      ),
    );
  }
}

//Navigator
class NavigatorList extends StatelessWidget {
  final List<String> navigator = [
    "直播",
    "推荐",
    "热门",
    "追番",
    "影视",
    "70年",
    "80年",
    "90年"
  ];
  var listIndex = 1;
  bool isClick = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.0,
      padding: EdgeInsets.all(3.0),
      decoration: BoxDecoration(
          color: Colors.white,
          border:
              Border(bottom: BorderSide(width: 1.0, color: Colors.black26))),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: navigator.length,
        itemBuilder: (context, index) {
          return _rightInkWell(index, navigator[index]);
        },
      ),
    );
  }

  Widget _rightInkWell(int index, String item) {
    isClick = (index == listIndex) ? true : false;
    return InkWell(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          color: isClick ? Colors.redAccent : Colors.white,
        ),
        width: 70.0,
        child: Text(
          item,
          style: TextStyle(fontSize: 18.0),
        ),
      ),
    );
  }
}

//推荐栏
class ImageRecommend extends StatelessWidget {
  final List swiperDataList;
  ImageRecommend({Key key, this.swiperDataList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    return Container(
      height: ScreenUtil().setHeight(400), //轮播组件图片高度
      width: ScreenUtil().setWidth(756), //轮播组件图片宽度
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {},
            child: Image.network("${swiperDataList[index]}", fit: BoxFit.fill),
          );
        },
        itemCount: swiperDataList.length,
        pagination: new SwiperPagination(),
        autoplay: true,
      ),
    );
  }
}

//videoRecommend
class VideoRecommend extends StatelessWidget {
  const VideoRecommend({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3.0),
      margin: EdgeInsets.only(left: 2.0),
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(width: 1.0, color: Colors.black26))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _videorecommend(),
          _videohuanyihuan(),
        ],
      ),
    );
  }

  Widget _videorecommend() {
    return Container(
      padding: EdgeInsets.all(3.0),
      margin: EdgeInsets.only(left: 3.0),
      child: Row(
        children: <Widget>[
          Text(
            '推荐番剧',
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
        ],
      ),
    );
  }

  Widget _videohuanyihuan() {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(3.0),
        margin: EdgeInsets.only(left: 2.0),
        child: Row(
          children: <Widget>[
            Text(
              '缓一缓',
              style: TextStyle(fontSize: 18.0),
            ),
            Icon(
              Icons.directions_run,
              color: Colors.black26,
              size: 25.0,
            ),
          ],
        ),
      ),
    );
  }
}

//videoshow
class VideoShow extends StatelessWidget {
  int i = 1;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          height: ScreenUtil().setHeight(750),
          padding: EdgeInsets.all(3.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.2,
            ),
            itemCount: 8,
            itemBuilder: (context, index) {
              return _videoitemUI(index);
            },
          )),
    );
  }

  Widget _videoitemUI(index) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(3.0),
        margin: EdgeInsets.all(2.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            color: Colors.black12),
        child: Column(
          children: <Widget>[
            Container(
              height: ScreenUtil().setHeight(200.0),
              child: Image.network('${images[index]}'),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text(
                    '${titles[index]}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: ScreenUtil().setSp(30.0)),
                  ),
                  Container(
                    padding: EdgeInsets.all(3.0),
                    height: ScreenUtil().setHeight(50.0),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.0, color: Colors.black26),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          color: Colors.orange,
                          child: Text(
                            '${i++}万点赞',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Icon(
                          Icons.menu,
                          size: 20.0,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
