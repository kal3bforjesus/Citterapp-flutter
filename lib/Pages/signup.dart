import 'package:flutter/material.dart';
import 'package:kal3b/Pages/forgotpasswordpage.dart';
import 'package:kal3b/Pages/invalidpage.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    Color txt = Color.fromRGBO(152, 152, 152, 1);
    Color button = Color.fromRGBO(21, 96, 189, 1);
    Color sign = Color.fromRGBO(255, 255, 255, 1);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 100, horizontal: 40), // this is to change the position of the text sign in
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign in',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 48,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 20),  
            Text(
              'Enter Your Staff Number and Password',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: txt, 
              ),
            ),
            SizedBox(height: 30,),
            SizedBox(
              width: 304, // Set the width of the TextFiel
              height: 36, // Set the height of the TextField
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Staff Number',
                  hintStyle: TextStyle(fontFamily: 'Inter'),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide(color: Colors.green, width: 2.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            SizedBox(
              width: 304, // Set the width of the TextField
              height: 36, // Set the height of the TextField
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintStyle: TextStyle(fontFamily: 'Inter'),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide(color: Colors.green, width: 2.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: (){
                                           Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
                    );
                  },
                  child: 
                Text(
                  'Forgot Password?',
                  style: TextStyle(fontFamily: 'Inter'),
                ),
                ),
              ],
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                 //Singular ontap takes you to the main page
              },
              onDoubleTap: () {
                    //double tap takes you to invalid password
                         Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => InvalidPage()),
                    );
              },
              child: Container(
                width: 304,
                height: 40,
                decoration: BoxDecoration(
                  color: button,
                ),
                child: Center(
                  child: Text(
                    'Sign In',
                    style: TextStyle(fontFamily: 'Inter', color: sign),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
