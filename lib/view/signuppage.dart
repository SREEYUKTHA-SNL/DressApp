
import 'package:dresscart/view/loginpage.dart';
import 'package:flutter/material.dart';

class SignPage extends StatelessWidget {
  const SignPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {}, 
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'Sign Up',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: InputBorder.none, // Remove the border
                  contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: InputBorder.none, // Remove the border
                  contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: InputBorder.none, // Remove the border
                  contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                ),
                obscureText: true,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Already have an account?'),
                IconButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
                  
                }, icon: Icon(Icons.arrow_right_alt_outlined,color: Colors.red,size: 40,))
              ],
            ),
            SizedBox(height: 40),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Sign Up action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent, // Red button color
                  padding: EdgeInsets.symmetric(horizontal: 150, vertical: 17),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  'SIGN UP',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}