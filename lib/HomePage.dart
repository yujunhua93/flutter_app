import 'package:flutter/material.dart';

class HomeData{
  const HomeData(this.title, this.content, this.routerName);
  final String title;
  final String content;
  final String routerName;
}

class HomePage extends StatefulWidget{

  final List<HomeData> homeData = [
    HomeData('HomePage', 'HomePage', 'home_page'),
  ];

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}


class HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return new SafeArea(
        child: Container(
     margin: EdgeInsets.only(top: 10, left: 10, right: 10),
     padding:EdgeInsets.all(10),
     decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(10),
         gradient: LinearGradient(colors: [
           Color(0xFF0D47A1),
           Color(0xFF1976D2),
           Color(0xFF42A5F5),
         ])),
     child: Expanded(
       child:
         Text(
           '111111111111111111111111111111111111111111111111111111111111111111111111',
           style: TextStyle(
               decoration: TextDecoration.none
           ),
           maxLines: 1,
           overflow: TextOverflow.ellipsis,
           textAlign: TextAlign.center,
         ),
     ),
        ),
   );
  }
}

//class HomePageState extends State<HomePage>{
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Fluter 教学'),
//      ),
//      body: ListView(
//        padding: EdgeInsets.all(10),
//        children: widget.homeData.map((HomeData homeData){
//          return HomeListItem(homeData: homeData);
//        }).toList(),
//      ),
//    );
//  }
//}


class HomeListItem extends StatefulWidget{
  const HomeListItem({Key key, @required HomeData homeData})
      : homeData = homeData,
        super(key: key);
  final HomeData homeData;

  @override
  State<StatefulWidget> createState() {
    return HomeListItemState();
  }}


class HomeListItemState extends State<HomeListItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: RaisedButton(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              '${widget.homeData.title}',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              '${widget.homeData.content}',
              style: TextStyle(fontSize: 12),
            )
          ],
        ),
        onPressed: () {
          print('${widget.homeData.title}');
          if (widget.homeData.routerName != null &&
              widget.homeData.routerName.isNotEmpty) {
            Navigator.pushNamed(context, widget.homeData.routerName);
          }
        },
      ),
    );
  }
}