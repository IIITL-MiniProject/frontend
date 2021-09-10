import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frontend/constant.dart';
import 'Components/signup_form.dart';


class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Theme.of(context).accentColor,
          body: SingleChildScrollView(
                      child: Column(
        children: [
                // Row(
                //   children: [
                //          SvgPicture.asset(circlex,),
                //   ],
                // ),
                SizedBox(height: 25,),
                Text('Welcome Onboard !!',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                SizedBox(height: 62),
                SignupForm(),
        ],
      ),
          ),
    );
  }
}