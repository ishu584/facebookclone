import 'package:facebook_clone/domain/custom_text_style.dart';
import 'package:facebook_clone/widgets/other_user_story_card.dart';
import 'package:facebook_clone/widgets/user_post_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipOval(
                  child: Image.asset(
                    "assets/images/my.png",
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                ),

                SizedBox(
                  width: 250,
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "What's on your mind?",
                      hintStyle: myTexStyle15(),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black54, width: 1),
                      ),

                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black54, width: 1),
                      ),

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black54, width: 1),
                      ),
                    ),
                  ),
                ),
                Icon(Icons.image, color: Colors.green),
              ],
            ),
            Divider(thickness: 4),

            /// here we show status
            /// Add Story Card
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    height: 200,
                    width: 120,
                    child: Card(
                      child: Stack(
                        children: [
                          Container(
                            height: 100,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                              image: DecorationImage(
                                image: AssetImage("assets/images/my.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          Positioned(
                            top: 84,
                            left: 40,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 1,
                                ),
                              ),
                              child: Icon(
                                Icons.add,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 4,
                            left: 14,
                            child: Text("Create story", style: myTexStyle15()),
                          ),
                        ],
                      ),
                    ),
                  ),
                  OtherUserStoryCard(
                    userName: "Birju",
                    imagePath: "assets/images/add4.png",
                  ),
                  OtherUserStoryCard(
                    userName: "Umang Tyagi",
                    imagePath: "assets/images/add8.png",
                  ),
                  OtherUserStoryCard(
                    userName: "Shobha Sharma",
                    imagePath: "assets/images/mummy.png",
                  ),
                  OtherUserStoryCard(
                    userName: "Sanjeev Sharma",
                    imagePath: "assets/images/papa.png",
                  ),
                  OtherUserStoryCard(
                    userName: "Nishant Sain",
                    imagePath: "assets/images/add9.png",
                  ),
                  OtherUserStoryCard(
                    userName: "Krishna Gautam",
                    imagePath: "assets/images/krishna.png",
                  ),
                  OtherUserStoryCard(
                    userName: "Himanshu yadav",
                    imagePath: "assets/images/himanshu.png",
                  ),
                ],
              ),
            ),

            Divider(thickness: 4),

            /// here we show user post
            /// to show user post we create user pot card
            UserPostCard(
              userName: "Shivam Sharma",
              userProfile: "assets/images/my.png",
              userPost: "assets/images/my2.png",
              postDate: "Jan 30,2025",
              numLike: "99K",
              numComment: "169 comment",
              numShare: "9 shares",
            ),
            SizedBox(height: 10),
            Divider(thickness: 2),
            SizedBox(height: 10),
            UserPostCard(
              userName: "Shobha Sharma",
              userProfile: "assets/images/mummy.png",
              userPost: "assets/images/mummy2.png",
              postDate: "Sep 18,2024",
              numLike: "79K",
              numComment: "53 comment",
              numShare: "11 shares",
            ),
            SizedBox(height: 10),
            Divider(thickness: 2),
            SizedBox(height: 10),
            UserPostCard(
              userName: "Sanjeev Sharma",
              userProfile: "assets/images/papa.png",
              userPost: "assets/images/papa2.png",
              postDate: "Oct 10,2025",
              numLike: "63K",
              numComment: "33 comment",
              numShare: "8 shares",
            ),
            SizedBox(height: 10),
            Divider(thickness: 2),
            SizedBox(height: 10),
            UserPostCard(
              userName: "Aman",
              userProfile: "assets/images/add4.png",
              userPost: "assets/images/birju2.png",
              postDate: "Apr 04,2022",
              numLike: "59K",
              numComment: "29 comment",
              numShare: "28 shares",
            ),
            SizedBox(height: 10),
            Divider(thickness: 2),
            SizedBox(height: 10),
            UserPostCard(
              userName: "Umang Tyagi",
              userProfile: "assets/images/add8.png",
              userPost: "assets/images/umang.png",
              postDate: "Apr 31,2022",
              numLike: "83K",
              numComment: "21 comment",
              numShare: "11 shares",
            ),
          ],
        ),
      ),
    );
  }
}
