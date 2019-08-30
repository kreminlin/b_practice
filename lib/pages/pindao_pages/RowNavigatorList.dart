import 'package:flutter/material.dart';
import 'package:b_practice/dart.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RowNavigatorListnote extends StatelessWidget {
  const RowNavigatorListnote({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _appbarItem1(),
      ),
      body: Body(),
    );
  }

  Widget _appbarItem1() {
    return Container(
      padding: EdgeInsets.all(2.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '我的频道',
            style: TextStyle(fontSize: ScreenUtil().setSp(35.0)),
          ),
          InkWell(
            onTap: () {},
            child: Text(
              '编辑',
              style: TextStyle(fontSize: ScreenUtil().setSp(35.0)),
            ),
          ),
        ],
      ),
    );
  }
}

//Body
class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(2.0),
            margin: EdgeInsets.only(left: 5.0, top: 8.0),
            child: Text(
              '已订阅${rowNavigatorList.length}个频道',
              style: TextStyle(
                  color: Colors.black38, fontSize: ScreenUtil().setSp(30.0)),
            ),
          ),
          Divider(
            color: Colors.black54,
          ),
          Container(
            width: ScreenUtil().setHeight(960),
            height: ScreenUtil().setHeight(950),
            padding: EdgeInsets.all(5.0),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 2.8,
                crossAxisCount: 3,
              ),
              scrollDirection: Axis.vertical,
              itemCount: rowNavigatorList.length,
              itemBuilder: (context, index) {
                return _bodyItem(index);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _bodyItem(index) {
    return InkWell(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(5.0),
        height: ScreenUtil().setHeight(200),
        width: ScreenUtil().setWidth(200),
        decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.all(Radius.circular(12.0))),
        child: Text(
          '${rowNavigatorList[index]}',
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: TextStyle(fontSize: ScreenUtil().setSp(35.0)),
        ),
      ),
    );
  }
}
