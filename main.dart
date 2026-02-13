import 'package:facebook_clone/screen/Tabs/friends_screen.dart';
import 'package:facebook_clone/screen/Tabs/notification_screen.dart';
import 'package:facebook_clone/screen/Tabs/profile_screen.dart';
import 'package:facebook_clone/screen/Tabs/store_screen.dart';
import 'package:facebook_clone/screen/Tabs/video_screen.dart';
import 'package:facebook_clone/screen/dash_board_screen.dart';
import 'package:facebook_clone/screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: DashBoardScreen(),
    );
  }
}
