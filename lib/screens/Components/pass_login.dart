import 'package:flutter/material.dart';

class PassLogin extends StatefulWidget {
  @override
  _PassLoginState createState() => _PassLoginState();
}

class _PassLoginState extends State<PassLogin> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
            Center(
              child: Container(
                width: 274,
                height: 43,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 125),
              child: Container(
                width: 217,
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Enter your password',
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                  validator: (value) {
                    if (value.isEmpty)
                      return 'Provide an input';
                    else if (value.length < 8)
                      return 'Atleast 8 characters required';
                    return null;
                  },
                  onSaved: (value) => setState(() => {}),
                  textInputAction: TextInputAction.done,
                ),
              ),
            ),
          ]);
  }
}