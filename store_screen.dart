import 'package:facebook_clone/domain/custom_text_style.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  /// here we create list of item to show data
  List<Map<String, dynamic>> item = [
    {"images": "assets/sell's item/bike1.png", "price": "Rs:2,50,000"},
    {"images": "assets/sell's item/bmw.png", "price": "Rs:42,50,000"},
    {"images": "assets/sell's item/camra.png", "price": "Rs:50,000"},
    {"images": "assets/sell's item/note.png", "price": "Rs:10,000"},
    {"images": "assets/sell's item/cycle.png", "price": "Rs:15,000"},
    {"images": "assets/sell's item/tv.png", "price": "Rs:54,000"},
    {"images": "assets/sell's item/machine.png", "price": "Rs:69,000"},
    {"images": "assets/sell's item/ac.png", "price": "Rs:75,000"},
    {"images": "assets/sell's item/chair.png", "price": "Rs:45,000"},
    {"images": "assets/sell's item/car1.png", "price": "Rs:14,25,000"},
    {"images": "assets/sell's item/boot.png", "price": "Rs:5,000"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Marketplace", style: myTexStyle30()),
        actions: [
          Icon(Icons.person, size: 30),
          SizedBox(width: 10),
          Icon(Icons.search_rounded, size: 30),
          SizedBox(width: 5),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.edit_note_sharp, size: 30),
                          SizedBox(width: 6),
                          Text("Sell", style: myTexStyle20()),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.menu_outlined, size: 30),
                          SizedBox(width: 6),
                          Text("Categories", style: myTexStyle20()),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),

            /// Today's and Location
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Todays", style: myTexStyle25()),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 25,
                        color: Colors.blueAccent,
                      ),
                      SizedBox(width: 5),
                      Text("Location", style: myTexStyle25()),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),

            /// here we create gride view to show item and it's price
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: item.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 5,
                childAspectRatio: 5 / 5.7,
              ),
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 300,
                  child: Column(
                    children: [
                      Image.asset(
                        item[index]["images"],
                        height: 200,
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                      Text(item[index]["price"], style: myTexStyle18()),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
