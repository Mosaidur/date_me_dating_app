import 'package:flutter/material.dart';
import 'makeFriendsContentCard.dart';

class MakeFriends extends StatelessWidget {
   MakeFriends({super.key});

  // Not const to allow flexibility
  final List<Map<String, dynamic>> userContentData = [
    {
      "categoryName": "Travel",
      "title": "A very long title that might cause overflow in the widget",
      "userName": "John Doe with a long name",
      "location": "Nepal with a very long location name",
      "mainImage": "https://via.placeholder.com/300",
      "userImage": "https://via.placeholder.com/40"
    },
    // Uncomment to add more data
    // {
    //   "categoryName": "Food",
    //   "title": "Delicious Pizza",
    //   "userName": "Jane Smith",
    //   "location": "Italy",
    //   "mainImage": "https://via.placeholder.com/300",
    //   "userImage": "https://via.placeholder.com/40"
    // }
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height, // full screen height
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: userContentData.length,
        itemBuilder: (context, index) {
          final item = userContentData[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: MakeFriendsContentCard(
              categoryName: item['categoryName'] ?? '',
              title: item['title'] ?? '',
              userName: item['userName'] ?? '',
              location: item['location'] ?? '',
              mainImage: item['mainImage'] ?? '',
              userImage: item['userImage'] ?? '',
            ),
          );
        },
      ),
    );
  }
}
