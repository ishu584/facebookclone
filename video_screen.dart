import 'package:facebook_clone/domain/custom_text_style.dart';
import 'package:facebook_clone/widgets/user_video_post_card.dart';
import 'package:flutter/material.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Video",
                      style: myTexStyle30(textWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 70,
                      child: Row(
                        children: [
                          Icon(Icons.person, size: 30),
                          SizedBox(width: 10),
                          Icon(Icons.search_rounded, size: 30),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Divider(thickness: 3),
              SizedBox(height: 10),
              UserVideoPostCard(
                userProfile: "assets/images/krishna.png",
                userPost: "assets/videos/5946371-uhd_3840_2160_30fps.mp4",
                userName: "Krishna Gautam ",
                postDate: "Dec 31,2024",
                numLike: "9.6M",
                numComment: "1M comment",
                numShare: "500K shares",
              ),
              Divider(thickness: 3),
              SizedBox(height: 10),
              UserVideoPostCard(
                userProfile: "assets/images/umang.png",
                userPost: "assets/videos/4880362-uhd_4096_2160_25fps.mp4",
                userName: "Umang Tyagi",
                postDate: "Jan 01,2026",
                numLike: "196K",
                numComment: "100K comment",
                numShare: "5K shares",
              ),
              Divider(thickness: 3),
              SizedBox(height: 10),
              UserVideoPostCard(
                userProfile: "assets/images/balaji.png",
                userPost: "assets/videos/2616637-hd_1920_1080_30fps.mp4",
                userName: "Ishu Sharma",
                postDate: "Jun 01,2026",
                numLike: "1.1M",
                numComment: "599K comment",
                numShare: "50K shares",
              ),
              Divider(thickness: 3),
              SizedBox(height: 10),
              UserVideoPostCard(
                userProfile: "assets/images/add9.png",
                userPost: "assets/videos/1093667-hd_1920_1080_30fps.mp4",
                userName: "Nishant Sain",
                postDate: "Jun 23,2023",
                numLike: "953K",
                numComment: "111K comment",
                numShare: "6K shares",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
