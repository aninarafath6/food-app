import 'package:flutter/material.dart';
import 'package:home_chef_moblie_apa/constants/colors.dart';
import 'package:home_chef_moblie_apa/views/home/homeView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {                                                   
    return MaterialApp(
      title: 'Home chef',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: primeryColor,
      ),
      home: HomeView(),
    );
  }
}
