import 'dart:ui';
import 'package:flutter/cupertino.dart';

import 'constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

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
              SizedBox(
                height: 60,
                child: ListView(
                  padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                  scrollDirection: Axis.horizontal,
                  children: [
                    NewWidget(s: 'All', c: kinactiveColor),
                    NewWidget(s: 'Sofas', c: kactiveColor),
                    NewWidget(s: 'Bench', c: kinactiveColor),
                    NewWidget(s: 'Armchair', c: kinactiveColor),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          topLeft: Radius.circular(40)),
                      color: Colors.white),
                  child: ListView(
                    children: [
                      NewCard(
                        sTitle: 'Chair',
                        sLabel: Text(
                          'This is chair',
                          style: kcardLabelStyle,
                        ),
                        w: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfFe-0ryf_a_CICuGMbF7LacjKXOvEFIeMVQ&usqp=CAU',
                      ),
                      NewCard(
                        sTitle: 'Chair 2',
                        sLabel: Text('Newgate ',style: kcardLabelStyle,),
                        w: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTf9nGMTb5_v2UMXqVmDwRKFqKcMh9hnoGISg&usqp=CAU',
                      ),
                      NewCard(
                        sTitle: 'Chair 2',
                        sLabel: Text('Newgate ',style: kcardLabelStyle,),
                        w: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTf9nGMTb5_v2UMXqVmDwRKFqKcMh9hnoGISg&usqp=CAU',
                      ),
                      NewCard(
                        sTitle: 'Chair 2',
                        sLabel: Text('Newgate ',style: kcardLabelStyle,),
                        w: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTf9nGMTb5_v2UMXqVmDwRKFqKcMh9hnoGISg&usqp=CAU',
                      ),
                      NewCard(
                        sTitle: 'Chair 2',
                        sLabel: Text('Newgate ',style: kcardLabelStyle,),
                        w: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTf9nGMTb5_v2UMXqVmDwRKFqKcMh9hnoGISg&usqp=CAU',
                      ),
                      NewCard(
                        sTitle: 'Chair 2',
                        sLabel: Text('Newgate ',style: kcardLabelStyle,),
                        w: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTf9nGMTb5_v2UMXqVmDwRKFqKcMh9hnoGISg&usqp=CAU',
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NewCard extends StatelessWidget {
  String sTitle;
  Widget sLabel;
  String w;
  NewCard({this.sTitle, this.sLabel, this.w});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20),
      color: Colors.white,
      elevation: 20.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  sTitle,
                  style: kcardStyle,
                ),
                sLabel,
                SizedBox(
                  height: 20,
                ),
                Container(
                  color: Colors.red[100],
                  child: Text('\$200'),
                ),
              ],
            ),
            Image(
              image: NetworkImage(w, scale: 1.8),
            ),
          ],
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  String s;
  Color c;
  NewWidget({this.s, this.c});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: c,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
      ),
      child: Text(
        s,
        style: ksmallStyle,
      ),
      height: 35,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
    );
  }
}
