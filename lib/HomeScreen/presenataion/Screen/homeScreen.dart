import 'package:date_me/theme/theme.dart';
import 'package:flutter/material.dart';

import '../Widgets/custormCurveConteiner.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          color: primaryColor, // border color
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

            Container(
              width: 200,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                  bottomLeft: Radius.circular(-25),
                  bottomRight: Radius.circular(-25),
                ),
              ),
            ),


            CustomCurveContainer(
              color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Text(
                    'Custom Curved Container',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            )



          ],
        ),
      ),
    );
  }
}
