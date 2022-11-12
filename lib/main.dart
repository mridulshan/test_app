import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

const kinactiveColor=Color(0xFF035aa7);
const kactiveColor = Color(0xFF5e9cc8);
const TextStyle ktitleStyle = TextStyle(
    color: Colors.white,
    fontSize: 25,
    fontWeight: FontWeight.w400,
    decoration: TextDecoration.none);
const TextStyle ksmallStyle = TextStyle(
    color: Colors.white,
    fontSize: 15,
    fontWeight: FontWeight.w400,
    decoration: TextDecoration.none);

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: kinactiveColor,
        body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Dashboard',
                              style: ktitleStyle,
                            ),
                            Icon(
                              Icons.notifications_none_sharp,
                              size: 35,
                              color: Colors.white,
                            )
                          ],
                        )),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color(0xFF679dcc),
                ),
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                child: ListTile(
                  leading: Icon(
                    Icons.search,
                    size: 40,
                    color: Colors.white70,
                  ),
                  title: TextField(
                    strutStyle: StrutStyle(fontSize: 10),
                    selectionHeightStyle:
                        BoxHeightStyle.includeLineSpacingBottom,
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                    obscureText: true,
                    decoration: InputDecoration(),
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 150,
                    child: ListView(
                      padding: EdgeInsets.fromLTRB(50, 0, 0,0),
                      scrollDirection: Axis.horizontal,
                      children: [
                        NewWidget(s:'All',c:kinactiveColor),
                        NewWidget(s:'Sofas',c:kactiveColor),
                        NewWidget(s:'Bench',c:kinactiveColor),
                        NewWidget(s:'Armchair',c:kinactiveColor),
                      ],
                    ),
                  ),
              Scrollbar(

                child: ListView(
    children:[
      Container(
        child: Text('hi'),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
          color: Color(0xFFefedf0),
        ),
      ),
      Container(
        child: Text('hi'),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
          color: Color(0xFFefedf0),
        ),
      ),
      Container(
        child: Text('hi'),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
          color: Color(0xFFefedf0),
        ),
      ),
      Container(
        child: Text('hi'),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
          color: Color(0xFFefedf0),
        ),
      ),
      Container(
        child: Text('hi'),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
          color: Color(0xFFefedf0),
        ),
      ),
      Container(
        child: Text('hi'),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
          color: Color(0xFFefedf0),
        ),
      ),
      Container(
        child: Text('hi'),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
          color: Color(0xFFefedf0),
        ),
      ),
      Container(
        child: Text('hi'),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
          color: Color(0xFFefedf0),
        ),
      ),
      Container(
        child: Text('hi'),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
          color: Color(0xFFefedf0),
        ),
      ),
      Container(
        child: Text('hi'),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
          color: Color(0xFFefedf0),
        ),
      ),
      Container(
        child: Text('hi'),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
          color: Color(0xFFefedf0),
        ),
      ),
      Container(
        child: Text('hi'),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
          color: Color(0xFFefedf0),
        ),
      ),

    ] ,
    ),
              ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
   String s;
   Color c;
   NewWidget({this.s,this.c});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: c,
        borderRadius: BorderRadius.circular(10),
        boxShadow:[BoxShadow(color: Colors.black12,blurRadius: 5)],
      ),
      child: Text(s,style: ksmallStyle,),
      height: 35,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.fromLTRB(10, 10, 10, 100),
    );
  }
}
