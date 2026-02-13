import 'package:facebook_clone/domain/custom_text_style.dart';
import 'package:facebook_clone/widgets/notification_card.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),

            /// notification and search icon
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Notifications", style: myTexStyle30()),
                  Icon(Icons.search_outlined, size: 30),
                ],
              ),
            ),
            Divider(thickness: 5, color: Colors.blueGrey),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("New", style: myTexStyle25()),
            ),

            /// here show notification card
            /// create notification
            NotificationCard(
              userProfile: 'assets/images/my2.png',
              title:
                  'Umang Tyagi mentioned you and other in a comment in username',
              icon: 'assets/icons/chat.png',
            ),
            Divider(thickness: 2),
            NotificationCard(
              userProfile: 'assets/images/balaji.png',
              title:
                  'Umang Tyagi mentioned you and other in a comment in username',
              icon: 'assets/icons/chat.png',
            ),
            Divider(thickness: 2),
            NotificationCard(
              userProfile: 'assets/images/krishna.png',
              title:
                  'Umang Tyagi mentioned you and other in a comment in username',
              icon: 'assets/icons/chat.png',
            ),
            Divider(thickness: 2),
            NotificationCard(
              userProfile: 'assets/images/add4.png',
              title:
                  'Umang Tyagi mentioned you and other in a comment in username',
              icon: 'assets/icons/chat.png',
            ),
            Divider(thickness: 2),
            NotificationCard(
              userProfile: 'assets/images/add8.png',
              title:
                  'Umang Tyagi mentioned you and other in a comment in username',
              icon: 'assets/icons/chat.png',
            ),
            Divider(thickness: 2),
            NotificationCard(
              userProfile: 'assets/images/chinu.png',
              title:
                  'Umang Tyagi mentioned you and other in a comment in username',
              icon: 'assets/icons/chat.png',
            ),
            Divider(thickness: 2),
            NotificationCard(
              userProfile: 'assets/images/shivam.png',
              title:
                  'Umang Tyagi mentioned you and other in a comment in username',
              icon: 'assets/icons/chat.png',
            ),
            Divider(thickness: 2),
            NotificationCard(
              userProfile: 'assets/images/add9.png',
              title:
                  'Umang Tyagi mentioned you and other in a comment in username',
              icon: 'assets/icons/chat.png',
            ),
            Divider(thickness: 2),
          ],
        ),
      ),
    );
  }
}
