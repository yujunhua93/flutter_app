import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
      return MyState();
  }

}

class MyState extends State<MyPage> with SingleTickerProviderStateMixin {

  bool click = false;
  FToast fToast;

  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipPath.shape(
        shape: StadiumBorder(),
          child: Container(
            height: 150,
            width: 250,
            child: Image.network(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),

    ) ;

    return InkWell(
      onTap: (){},
      child: Text('这是顶顶顶顶顶得到的'),
    );

//    return Center(
//      child: GestureDetector(
//        onTap: () {
//          _showToast();
//          setState(() {
//            click = !click;
//          });
//        },
//        child: AnimatedContainer(
//          height: click ? 200 : 100,
//          width: click ? 200 : 100,
//          decoration: BoxDecoration(
//              image: DecorationImage(
//                image: NetworkImage(
//                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
//                fit: BoxFit.cover,
//              ),
//              borderRadius: BorderRadius.all(Radius.circular(
//                click ? 200 : 0,
//              ))),
//          duration: Duration(seconds: 3),
//          curve: Curves.linear,
//          onEnd: () {
//            setState(() {
//              click = !click;
//            });
//          },
//        ),
//      ),
//    );
  }

  _showToast() {
    Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: Colors.greenAccent,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.check),
          SizedBox(
            width: 12.0,
          ),
          Text("This is a Custom Toast"),
        ],
      ),
    );


    fToast.showToast(
      child: toast,
      gravity: ToastGravity.BOTTOM,
      toastDuration: Duration(seconds: 2),
    );

    // Custom Toast Position
    fToast.showToast(
        child: toast,
        toastDuration: Duration(seconds: 2),
        positionedToastBuilder: (context, child) {
          return Positioned(
            child: child,
            top: 16.0,
            left: 16.0,
          );
        });
  }
}
