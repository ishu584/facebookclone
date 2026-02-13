import 'package:facebook_clone/domain/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class UserVideoPostCard extends StatefulWidget {
  String userProfile;
  String userPost;
  String? postDate;
  String? numLike;
  String? numComment;
  String? numShare;
  String userName;

  UserVideoPostCard({
    super.key,
    required this.userProfile,
    required this.userPost,
    required this.userName,
    this.numComment,
    this.numLike,
    this.numShare,
    this.postDate,
  });

  @override
  State<UserVideoPostCard> createState() => _UserPostCardState();
}

class _UserPostCardState extends State<UserVideoPostCard> {
  late VideoPlayerController videoPlayerController;
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    videoPlayerController = VideoPlayerController.asset(widget.userPost)
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipOval(
                    child: Image.asset(
                      widget.userProfile,
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.userName,
                        style: myTexStyle18(textWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Text(
                            widget.postDate ?? "Today",
                            style: myTexStyle18(),
                          ),
                          SizedBox(width: 5),
                          Icon(Icons.group, size: 18),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Icon(Icons.more_horiz), Icon(Icons.close_rounded)],
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: 15),

        if (videoPlayerController.value.isInitialized)
          GestureDetector(
            onTap: () {
              setState(() {
                if (videoPlayerController.value.isPlaying) {
                  videoPlayerController.pause();
                } else {
                  videoPlayerController.play();
                }
                isPlaying = videoPlayerController.value.isPlaying;
              });
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                AspectRatio(
                  aspectRatio: videoPlayerController.value.aspectRatio,
                  child: VideoPlayer(videoPlayerController),
                ),
                if (!isPlaying)
                  Icon(
                    Icons.play_circle_outline,
                    color: Colors.white,
                    size: 50,
                  ),
              ],
            ),
          )
        else
          SizedBox(
            height: 200,
            child: Center(child: CircularProgressIndicator()),
          ),

        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 100,
                child: Stack(
                  children: [
                    Image.asset("assets/icons/like.png", height: 30),
                    Positioned(
                      left: 30,
                      child: Image.asset("assets/icons/Dil.png", height: 30),
                    ),

                    Positioned(
                      left: 60,
                      child: Text(
                        widget.numLike ?? "50K",
                        style: myTexStyle18(textColor: Colors.black87),
                      ),
                    ),
                  ],
                ),
              ),

              Row(
                children: [
                  Text(
                    widget.numComment ?? "200 comments",
                    style: myTexStyle15(textColor: Colors.black54),
                  ),
                  SizedBox(width: 10),
                  Text(
                    widget.numShare ?? "15 shares",
                    style: myTexStyle15(textColor: Colors.black54),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 10),

        /// line  comment send share
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// like
              Row(
                children: [
                  Icon(Icons.thumb_up_alt_outlined),
                  Text("Like", style: myTexStyle15()),
                ],
              ),

              /// comment
              Row(
                children: [
                  Icon(Icons.chat_bubble_outline),
                  Text("Comment", style: myTexStyle15()),
                ],
              ),

              /// send
              Row(
                children: [
                  Icon(Icons.share),
                  Text("Send", style: myTexStyle15()),
                ],
              ),

              Row(
                children: [
                  Icon(Icons.mobile_screen_share_rounded),
                  Text("share", style: myTexStyle15()),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 5),
      ],
    );
  }
}
