import 'package:facebook_clone/domain/custom_text_style.dart';
import 'package:facebook_clone/screen/Tabs/friends_screen.dart';
import 'package:facebook_clone/screen/Tabs/home_screen.dart';
import 'package:facebook_clone/screen/Tabs/notification_screen.dart';
import 'package:facebook_clone/screen/Tabs/profile_screen.dart';
import 'package:facebook_clone/screen/Tabs/store_screen.dart';
import 'package:facebook_clone/screen/Tabs/video_screen.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            ///------------------App Bar-----------------------///
            title: Text(
              "facebook",
              style: myTexStyle30(
                textColor: Colors.blueAccent,
                textWeight: FontWeight.bold,
              ),
            ),
            actions: [
              /// add icon
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(Icons.add_sharp, color: Colors.white, size: 25),
              ),
              SizedBox(width: 5),

              /// search icon
              Icon(Icons.search_rounded, size: 35),
              SizedBox(width: 5),

              ///messenger icon
              Image.asset("assets/icons/message.png", height: 30),
              SizedBox(width: 5),
            ],
            bottom: TabBar(
              indicatorColor: Colors.blueAccent,
              labelColor: Colors.blueAccent,
              automaticIndicatorColorAdjustment: true,
              tabs: [
                Tab(icon: Icon(Icons.home_filled)),
                Tab(icon: Icon(Icons.video_collection)),
                Tab(icon: Icon(Icons.group)),
                Tab(icon: Icon(Icons.storefront)),
                Tab(icon: Icon(Icons.notifications)),
                Tab(
                  icon: ClipOval(
                    child: Image.asset(
                      "assets/images/my.png",
                      height: 40,
                      width: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              /// here we show all screen according to tab bar
              /// know create six screen  according to tabs
              HomeScreen(),
              VideoScreen(),
              FriendsScreen(),
              StoreScreen(),
              NotificationScreen(),
              ProfileScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
