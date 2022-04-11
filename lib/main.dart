import 'package:flutter/material.dart';
import 'package:list_view/screens/tabBar.dart';
import 'package:list_view/screens/listView1.dart';
import 'package:list_view/screens/listView2.dart';
import 'package:list_view/screens/listView3.dart';
import 'package:list_view/screens/main.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      title: 'Login Screen',
      debugShowCheckedModeBanner: false,
          home: MainPage(),
       //    home: Tabs(),
      //   home: TabBar(),
    );
  }
}
