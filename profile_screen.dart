import 'package:facebook_clone/domain/custom_text_style.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  /// here we create list for showing grid view
  List<Map<String, dynamic>> cate = [
    /// fill the data
    {"icon": "assets/icons/memori.png", "title": "Memories"},
    {"icon": "assets/icons/book.png", "title": "Saved"},
    {"icon": "assets/icons/group.png", "title": "Groups"},
    {"icon": "assets/icons/video1.png", "title": "Video"},
    {"icon": "assets/icons/shop.png", "title": "Marketplace"},
    {"icon": "assets/icons/friends.png", "title": "Friends(129 online)"},
    {"icon": "assets/icons/feed.png", "title": "Feeds"},
    {"icon": "assets/icons/date.png", "title": "Events"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),

            /// menu and icon
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Menu", style: myTexStyle30()),
                  Row(
                    children: [
                      Icon(Icons.settings, size: 30),
                      SizedBox(width: 20),
                      Icon(Icons.search_outlined, size: 30),
                    ],
                  ),
                ],
              ),
            ),

            /// card user profile and user name
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Card(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipOval(
                        child: Image.asset(
                          "assets/images/my.png",
                          height: 70,
                          width: 70,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Text("Shivam Sharma", style: myTexStyle25()),
                  ],
                ),
              ),
            ),

            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text("Your shortcuts", style: myTexStyle18()),
            ),

            SizedBox(
              height: 100,
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Stack(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                              image: AssetImage("assets/images/add8.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 5,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Icon(Icons.group, color: Colors.blueAccent),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Stack(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                              image: AssetImage("assets/images/add4.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 5,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Icon(Icons.group, color: Colors.blueAccent),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Stack(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                              image: AssetImage("assets/images/add9.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 5,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Icon(Icons.group, color: Colors.blueAccent),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Stack(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                              image: AssetImage("assets/images/add10.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 5,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Icon(Icons.group, color: Colors.blueAccent),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            ///------------------------Grid View-------------------------------///
            /// here we create grid view to categories
            SizedBox(
              height: 380,
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: cate.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 5 / 2,
                ),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(cate[index]['icon'], height: 30),
                            Text(cate[index]['title'], style: myTexStyle18()),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            /// see more button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black12,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text("See more", style: myTexStyle18()),
                ),
              ),
            ),

            ListTile(
              leading: Icon(Icons.help, size: 30),
              title: Text("Help & support", style: myTexStyle20()),
              trailing: Icon(Icons.keyboard_arrow_down_rounded),
            ),
            ListTile(
              leading: Icon(Icons.settings, size: 30),
              title: Text("Setting & privacy", style: myTexStyle20()),
              trailing: Icon(Icons.keyboard_arrow_down_rounded),
            ),
            ListTile(
              leading: Icon(Icons.category, size: 30),
              title: Text("Professional access", style: myTexStyle20()),
              trailing: Icon(Icons.keyboard_arrow_down_rounded),
            ),
            ListTile(
              leading: Icon(Icons.dataset_outlined, size: 30),
              title: Text("Professional access", style: myTexStyle20()),
              trailing: Icon(Icons.keyboard_arrow_down_rounded),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black12,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text("Log out", style: myTexStyle18()),
                ),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
