import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
     
      body: new SingleChildScrollView(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //可以确定控制盒子大小的widget
            new SizedBox(height: 500,child:
            new Container(
              decoration: BoxDecoration(
                  color: Colors.red
              ),
            ),),
            new Text('asdfdsaf'),
            new Text('asdfdsaf'),
            new Text('asdfdsaf'),
            new Text('asdfdsaf'),
            new Text('asdfdsaf'),
            new Text('asdfdsaf'),
            new Text('asdfdsaf'),
            new Text('asdfdsaf'),
            new Text('asdfdsaf'),

            new Text('asdfdsaf'),
            new Text('asdfdsaf'),
            new Text('asdfdsaf'),
            new Text('asdfdsaf'),
            new Text('asdfdsaf'),
            new Text('asdfdsaf'),
            new Text('asdfdsaf'),
            new Text('asdfdsaf'),

          ],
        ),
      ),

      );


  }


}

//class LoginPageState extends State<LoginPage>{
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text('水平方向布局'),
//      ),
//      body:new Row(
//            children: [
//              new Row(
//                children: <Widget>[
//                  new Text('我是左边的', style: TextStyle(fontSize: 15)),
//                  new Expanded(
//                    child: Text(''), // 中间用Expanded控件
//                  ),
//                  new Text('我是右边的', style: TextStyle(fontSize: 12)),
//                ],
//
//              ),
//
//            ],
//          ),
//
//    );
//  }
//
//}
