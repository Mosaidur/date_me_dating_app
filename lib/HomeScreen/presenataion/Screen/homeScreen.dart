import 'package:date_me/theme/theme.dart';
import 'package:flutter/material.dart';

import '../Widgets/FindPartner.dart';
import '../Widgets/MakeFirend.dart';
import '../Widgets/custormCurveConteiner.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final List<Map<String, dynamic>> profiles = const [
    {
      "image": "assets/images/1.png",
      "name": "Asif",
    },
    {
      "image": "assets/images/2.jpg",
      "name": "Rahim",
    },
    {
      "image": "assets/images/3.jpg",
      "name": "Karim",
    },
    {
      "image": "assets/images/4.jpg",
      "name": "Nusrat",
    },
    {
      "image": "assets/images/1.png",
      "name": "Asif",
    },
    {
      "image": "assets/images/2.jpg",
      "name": "Rahim",
    },
    {
      "image": "assets/images/3.jpg",
      "name": "Karim",
    },
    {
      "image": "assets/images/4.jpg",
      "name": "Nusrat",
    },
  ];

  int selectedIndex = 0;

  final List<String> tabs = ["Make Friends", "Find Partner"];

  // Only two widgets, one for each tab
  final List<Widget> tabData = [
     MakeFriends(), // index 0 → "Make Friends"
    const CustomWidget2(), // index 1 → "Find Partner"
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFFFDF7FD),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),


            // top portion
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Date Me",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Mulish',
                          fontSize: 28,
                          color: primaryColor,
                        ),
                      ),
                      SizedBox(width: 5,),
                      Icon(
                        Icons.favorite,
                        color: Colors.red, // primary color
                        size: 30,
                      ),
                    ],
                  ),

                  // notification button
                  GestureDetector(
                    onTap: (){
                      print("Notification Button");
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle, // makes the container round
                        border: Border.all(
                          color: primaryColor.withOpacity(0.5), // border color
                          width: 2, // border thickness
                        ),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Stack(
                        clipBehavior: Clip.none, // allows the badge to overflow
                        children: [
                          Icon(
                            Icons.notifications_none,
                            color: primaryColor, // primary color
                            size: 30,
                          ),
                          Positioned(
                            right: -2,
                            top: -2,
                            child: Container(
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                              // optional: you can put a number inside the badge
                              child: const Text(
                                '1',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),

            SizedBox(height: 10,),

            // Story
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [

                  // My Story (with + icon)
                  GestureDetector(
                    onTap: (){},
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              // Profile Image Container
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  border: Border.all(
                                    color: const Color(0xFFDD88CF), // Border color
                                    width: 2,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: ClipOval(
                                    child: Image.asset(
                                      "assets/images/profile.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),

                              // Bottom-right small round container with icon
                              Positioned(
                                bottom: 2,
                                right: 2,
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  decoration: const BoxDecoration(
                                    color: Color(0xFFDD88CF),
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.add,
                                    size: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 6),

                          // Text below
                          Text(
                            "My Story",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Mulish',
                              fontSize: 14,
                              color: primaryColor, // Replace with your primaryColor
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),

                  // Other Profiles (from JSON/list)
                  ...profiles.map((profile) {
                    return GestureDetector(
                      onTap: (){},
                      child: Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: Column(
                          children: [
                            // Profile Image Container
                            Container(
                              height: 64,
                              width: 64,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                border: Border.all(
                                  color: const Color(0xFFDD88CF), // Border color
                                  width: 2,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: ClipOval(
                                  child: Image.asset(
                                    profile["image"],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(height: 10),

                            // Text below
                            Text(
                              profile["name"],
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Mulish',
                                fontSize: 14,
                                color: primaryColor, // Replace with primaryColor
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),

                ],
              ),
            ),


            // Selection Button

            // Padding(
            //   padding: const EdgeInsets.all(16.0),
            //   child: Container(
            //     margin: const EdgeInsets.symmetric(horizontal: 6),
            //     height: 44,
            //     decoration: BoxDecoration(
            //       color: buttonBg,
            //       borderRadius: BorderRadius.circular(20),
            //     ),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: List.generate(tabs.length, (index) {
            //         final bool isSelected = selectedIndex == index;
            //
            //         return GestureDetector(
            //           onTap: () {
            //             setState(() {
            //               selectedIndex = index;
            //             });
            //           },
            //           child: Center(
            //             child: Container(
            //               height: 35,
            //               decoration: BoxDecoration(
            //                 color: isSelected ? Colors.white : Colors.transparent,
            //                 borderRadius: BorderRadius.circular(20),
            //               ),
            //               padding: const EdgeInsets.symmetric(horizontal: 16),
            //               alignment: Alignment.center,
            //               child: Text(
            //                 tabs[index],
            //                 style: TextStyle(
            //                   fontWeight: FontWeight.w600,
            //                   fontSize: 14,
            //                   color: primaryColor,
            //                 ),
            //               ),
            //             ),
            //           ),
            //         );
            //       }),
            //     ),
            //   ),
            // )


            // Tab Selection
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 6),
                height: 44,
                decoration: BoxDecoration(
                  color: buttonBg,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(tabs.length, (index) {
                    final bool isSelected = selectedIndex == index;

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        height: 35,
                        width: MediaQuery.of(context).size.width/2-40,
                        margin: const EdgeInsets.symmetric(horizontal: 6),
                        decoration: BoxDecoration(
                          color: isSelected ? Colors.white : Colors.transparent,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        alignment: Alignment.center,
                        child: Text(
                          tabs[index],
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),


            tabData[selectedIndex],
            // Show only the selected widget
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 16),
            //   child: tabData[selectedIndex],
            // ),
          ],
        ),
      ),
    );
  }
}
