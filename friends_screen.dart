import 'package:facebook_clone/domain/custom_text_style.dart';
import 'package:facebook_clone/widgets/friends_request_card.dart';
import 'package:flutter/material.dart';

class FriendsScreen extends StatefulWidget {
  const FriendsScreen({super.key});

  @override
  State<FriendsScreen> createState() => _FriendsScreenState();
}

class _FriendsScreenState extends State<FriendsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Friends",
                      style: myTexStyle30(textWeight: FontWeight.bold),
                    ),
                    Icon(Icons.search_rounded, size: 30),
                  ],
                ),
              ),
              SizedBox(height: 8),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6.0,
                        vertical: 4,
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                          SizedBox(width: 5),

                          Text("99 online", style: myTexStyle20()),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6.0,
                        vertical: 4,
                      ),
                      child: Text("Suggestions", style: myTexStyle20()),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6.0,
                        vertical: 4,
                      ),
                      child: Text("Your friends", style: myTexStyle20()),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10),
              Divider(thickness: 5),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text("Friend requests", style: myTexStyle22()),
                        SizedBox(width: 10),
                        Text("300", style: myTexStyle25(textColor: Colors.red)),
                      ],
                    ),
                    Text(
                      "Sell all",
                      style: myTexStyle22(textColor: Colors.blueAccent),
                    ),
                  ],
                ),
              ),

              /// here we  show friends request
              /// create friends request card
              /// here we call friends request crad
              Divider(thickness: 1),
              FriendsRequestCard(
                userName: '---{Ansh_Josi}---',
                userProfile: 'assets/images/add10.png',
                mul_1: 'assets/images/papa.png',
                mul_2: 'assets/images/balaji.png',
                numMul: "19 mutual friends",
              ),
              Divider(thickness: 1),
              FriendsRequestCard(
                userName: '#ShivamSani',
                userProfile: 'assets/images/shivam.png',
                mul_1: 'assets/images/add8.png',
                mul_2: 'assets/images/krishna.png',
                numMul: "29 mutual friends",
              ),
              Divider(thickness: 1),
              FriendsRequestCard(
                userName: '@Sourabh_Sharma',
                userProfile: 'assets/images/hati.png',
                mul_1: 'assets/images/my2.png',
                mul_2: 'assets/images/mummy.png',
                numMul: "9 mutual friends",
              ),
              Divider(thickness: 1),
              FriendsRequestCard(
                userName: 'Priya^Sharma?',
                userProfile: 'assets/images/priya.png',
                mul_1: 'assets/images/krishna.png',
                mul_2: 'assets/images/birju2.png',
                numMul: "2 mutual friends",
              ),
              Divider(thickness: 1),
              FriendsRequestCard(
                userName: '!Chinu!',
                userProfile: 'assets/images/chinu.png',
                mul_1: 'assets/images/my2.png',
                mul_2: 'assets/images/add10.png',
              ),
              Divider(thickness: 1),
              FriendsRequestCard(
                userName: '<Aman>',
                userProfile: 'assets/images/add4.png',
                mul_1: 'assets/images/papa2.png',
                mul_2: 'assets/images/balaji.png',
                numMul: "133 mutual friends",
              ),
              Divider(thickness: 1),
              FriendsRequestCard(
                userName: 'RCB Lover',
                userProfile: 'assets/images/rcb.png',
                mul_1: 'assets/images/hati.png',
                mul_2: 'assets/images/add9.png',
                numMul: "40 mutual friends",
              ),
              Divider(thickness: 1),
              FriendsRequestCard(
                userName: '@Modi',
                userProfile: 'assets/images/modi.png',
                mul_1: 'assets/images/add10.png',
                mul_2: 'assets/images/priya.png',
                numMul: "1 mutual friends",
              ),
              Divider(thickness: 1),
              FriendsRequestCard(
                userName: 'Krishna^Gautam',
                userProfile: 'assets/images/krishna.png',
                mul_1: 'assets/images/shivam.png',
                mul_2: 'assets/images/add10.png',
                numMul: "15 mutual friends",
              ),
              Divider(thickness: 1),
              FriendsRequestCard(
                userName: '{HimanshuYadav}',
                userProfile: 'assets/images/himanshu.png',
                mul_1: 'assets/images/krishna.png',
                mul_2: 'assets/images/chinu.png',
                numMul: "17 mutual friends",
              ),
              Divider(thickness: 1),
              FriendsRequestCard(
                userName: '--{[!Tarun!]}--',
                userProfile: 'assets/images/add11.png',
                mul_1: 'assets/images/chinu.png',
                mul_2: 'assets/images/himanshu.png',
                numMul: "13 mutual friends",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
