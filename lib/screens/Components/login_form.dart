import 'package:flutter/material.dart';
import 'package:frontend/screens/Components/pass_login.dart';
import 'package:frontend/screens/signup_screen.dart';
import '../../constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:google_sign_in/google_sign_in.dart';
import 'email_field.dart';
import 'dart:async';
import 'dart:convert';



class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  GoogleSignInAccount _currentUser;
  GoogleSignInAuthentication auth;

  @override
  void initState() {
    super.initState();
  }

  // Future<void> saveInSharedPreferances(Map tokens) async {
  //   String key;
  //   key = "accessToken";
  //   await store.addStringToSP(key, tokens[key]);
  //   key = "refreshToken";
  //   await store.addStringToSP(key, tokens[key]);
  //   String val = await store.getStringValuesSP(key);
  //   print(val);
  //   // store them in shared preference
  // }

  final _formKey = GlobalKey<FormState>();

  // void addsignin() async {
  //   try {
  //     final response = await http.get(Uri.parse(Urls.signin));
  //     Map tokens = json.decode(response.body);
  //     await saveInSharedPreferances(tokens);
  //     Navigator.of(context).pushNamed('/home');
  //   } catch (error) {
  //     print(error);
  //   }
  // }

  // void _formsave() {
  //   bool valid = _formKey.currentState.validate();
  //   if (!valid) {
  //     return;
  //   }
  //   _formKey.currentState.save();
  //   addsignin();
  //   print(User.email);
  //   print(User.password);
  // }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          EmailField(),
          SizedBox(height: 18),
          PassLogin(),
          SizedBox(height: 24),
          Container(
            height: 47,
            width: 274,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.all(Radius.circular(100)),
            ),
            child: FlatButton(
              onPressed: () => {},
              color: Theme.of(context).primaryColor,
              child: Text(
                'Log In',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
          SizedBox(height: 40,),
          TextButton(
            onPressed: () => {},
            child: const Text(
              'Forget Password ?',
              style: TextStyle(color: kprimarytheme),
            ),
          ),
          Row(
            children: [
              SizedBox(width: 145),
              Text('Dont have an account ?'),
              TextButton(
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupScreen()),
                  ),
                },
                child: const Text(
                  'Sign Up',
                  style: TextStyle(color: kprimarytheme),
                ),
              ),
            ],
          ),
          Text(
            'OR',
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: GestureDetector(
                onTap: ()=> {},
                child: Icon(
                  FontAwesomeIcons.googlePlusG,
                  color: Colors.red,
                  size: 24,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: IconButton(
                onPressed: () => {},
                icon: Icon(
                  FontAwesomeIcons.facebook,
                  color: Colors.blue,
                  size: 24,
                ),
              ),
            ),
          ])
        ],
      ),
    );
  }
}
