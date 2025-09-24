import 'package:flutter/material.dart';

import '../../../HomeScreen/presenataion/Screen/homeScreen.dart';
import '../../../theme/theme.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 100,),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Image.asset(
                      "assets/images/login_Image.png",
                    height: 300,
                  ),
                ),
              ),
        
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text (
                  'Let’s meeting new people around you',
                  style: TextStyle(
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w900,
                    fontSize: 32,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
        
              // Login with phone
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Homescreen()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: primaryColor
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Container(
                          // height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Center(
                              child: Icon(
                                Icons.phone_in_talk, // correct icon name
                                color: primaryColor,
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 60,),
                        Text(
                            "Login with Phone",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        )
        
        
                      ],
                    ),
                  ),
                ),
              ),
        
              SizedBox(height: 20,),
        
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: "Don’t have an account? ",
                  style: TextStyle(
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w400, // Regular
                    fontSize: 16,
                    color: primaryColor, // Primary color
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: "Sign Up",
                      style: TextStyle(
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w600, // SemiBold
                        fontSize: 16,
                        color: secondary1, // Secondary color
                      ),
                    ),
                  ],
                ),
              ),
        
        
        
            ],
          ),
        ),
      ),

    );
  }
}
