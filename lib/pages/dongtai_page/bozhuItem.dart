import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//博主动态页面
class BozhuDongtaiItem extends StatelessWidget {
  const BozhuDongtaiItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3.0),
      color: Colors.white,
      child: _imagecontainer(),
    );
  }

  Widget _imagecontainer(){
    return Container(
      child: Row(
        children: <Widget>[
          ClipOval(
            child: SizedBox(
              width: 70,
              height:70,
              child:  Image.network(
                "https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=4164116827,1730784231&fm=26&gp=0.jpg",
                fit: BoxFit.fitHeight,
                ),
            )
          ),
          Container(
            height: 100,
            width: 320,
            color: Colors.pink,
            margin: EdgeInsets.only(left: 8.0),
            padding: EdgeInsets.only(top: 7.0),
            alignment: Alignment.bottomLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
              ],
            ),
          ),
        ],
      ),
    );
  }
}