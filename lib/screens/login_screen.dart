import 'package:flutter/material.dart';
import 'package:frontend/screens/Components/login_form.dart';



class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Row(
            //   children: [
            //     SvgPicture.asset(
            //       circlex,
            //     ),
            //   ],
            // ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Welcome Back !!',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 100,
            ),
            // Image.asset('assets/images/bus.jpg'),
            LoginForm(),
          ],
        ),
      ),
    );
  }
}
