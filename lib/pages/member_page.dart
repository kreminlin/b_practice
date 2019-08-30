import 'package:flutter/material.dart';
import './drawer.dart';
import 'package:b_practice/dart.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MemberPage extends StatelessWidget {
  const MemberPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: _topimage1(context),
        title: Row(
          children: <Widget>[
            _topsText(),
            _topimageList(),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: ListView(
        children: <Widget>[
          _searchclick(),
          NavigatorList(),
          _orderTitle(),
          _orderType(),
          _actionList(),
        ],
      ),
    );
  }

  Widget _topimage1(context) {
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
        width: ScreenUtil().setWidth(400),
        height: 35,
        child: Text(
          '会员购',
          style: TextStyle(fontSize: 22.0),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _topimageList() {
    return Container(
      padding: EdgeInsets.all(2.0),
      margin: EdgeInsets.only(left: 1.0),
      alignment: Alignment.centerRight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.perm_identity,
            ),
          ),
        ],
      ),
    );
  }

  //搜索;
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              alignment: Alignment.center,
              onPressed: () {},
              icon: Icon(Icons.search),
              iconSize: 20.0,
            ),
            Text(
              'Fate',
              style: TextStyle(
                  color: Colors.black38, fontSize: ScreenUtil().setSp(25.0)),
            ),
          ],
        ),
      ),
    );
  }

  //我的订单;
  Widget _orderTitle() {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(width: 1.0, color: Colors.black26),
        ),
      ),
      child: ListTile(
        leading: Icon(Icons.list),
        title: Text('我的订单'),
        trailing: Icon(Icons.arrow_right),
      ),
    );
  }
}

//订单类型
Widget _orderType() {
  return Container(
    margin: EdgeInsets.only(top: 5.0),
    width: ScreenUtil().setWidth(750),
    height: ScreenUtil().setHeight(150),
    padding: EdgeInsets.only(top: 20.0),
    color: Colors.white,
    child: Row(
      children: <Widget>[
        Container(
          width: ScreenUtil().setWidth(187),
          child: Column(
            children: <Widget>[
              Icon(
                Icons.query_builder,
                size: 30,
              ),
              Text('待付款'),
            ],
          ),
        ),
        Container(
          width: ScreenUtil().setWidth(187),
          child: Column(
            children: <Widget>[
              Icon(
                Icons.party_mode,
                size: 30,
              ),
              Text('待发货'),
            ],
          ),
        ),
        Container(
          width: ScreenUtil().setWidth(187),
          child: Column(
            children: <Widget>[
              Icon(
                Icons.directions_car,
                size: 30,
              ),
              Text('待收货'),
            ],
          ),
        ),
        Container(
          width: ScreenUtil().setWidth(187),
          child: Column(
            children: <Widget>[
              Icon(
                Icons.content_paste,
                size: 30,
              ),
              Text('待评价'),
            ],
          ),
        ),
      ],
    ),
  );
}

//通用listTile
Widget _myListTile(title) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border(bottom: BorderSide(color: Colors.black12, width: 1.0)),
    ),
    child: ListTile(
      leading: Icon(Icons.bluetooth_searching),
      title: Text(title),
      trailing: Icon(Icons.arrow_right),
    ),
  );
}

Widget _actionList() {
  return Container(
    margin: EdgeInsets.only(top: 10.0),
    child: Column(
      children: <Widget>[
        _myListTile('领取优惠券'),
        _myListTile('已领取优惠券'),
        _myListTile('地址管理'),
        _myListTile('客服电话'),
        _myListTile('关于我们'),
      ],
    ),
  );
}

//频道导航栏
class NavigatorList extends StatelessWidget {
  const NavigatorList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(250),
      padding: EdgeInsets.all(3.0),
      margin: EdgeInsets.only(top: 2.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1.5,
          crossAxisCount: 4,
        ),
        itemCount: titles4.length,
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
          Icon(Icons.surround_sound),
          Text(
            '${titles4[index]}',
            style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
