
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/App.dart';


class SplashPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
      return new SplashState();
  }

}

class SplashState extends State<SplashPage>{
  @override
  Widget build(BuildContext context) {
      return GestureDetector(
        onTap: goToHomePage,
        child: Image.asset("images/pet_logo.png",fit: BoxFit.cover,),
      );
  }

  @override
  void initState() {
    super.initState();
    countDown();
  }

  void countDown(){
    //设置倒计时三秒后执行跳转方法
    var duration = new Duration(seconds: 3);
    new Future.delayed(duration, goToHomePage);
  }

  void goToHomePage(){
    Navigator.pushAndRemoveUntil(context, new MaterialPageRoute(builder: (context) => new App()), (route) => route == null);
  }



}