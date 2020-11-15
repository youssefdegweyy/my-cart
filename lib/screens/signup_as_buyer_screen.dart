import 'package:flutter/material.dart';

class SignupFormBuyer extends StatefulWidget {
  @override
  SignupFormBuyerState createState() {
    return SignupFormBuyerState();
  }
}

class SignupFormBuyerState extends State<SignupFormBuyer> {
  final _formKeysignupB = GlobalKey<FormState>();
  static const routeName = '/signup-buyer';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
            child: Scaffold(
                body: ListView(children: [
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/Background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Logo section
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: AssetImage("images/Logo.png"),
                  width: 350,
                  height: 150,
                )
              ],
            ),
            //Email textfield
            Form(
                key: _formKeysignupB,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 20.0, right: 20.0, bottom: 10),
                              child: Container(
                                  alignment: Alignment.center,
                                  height: 60.0,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(9.0)),
                                  child: TextFormField(
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return 'Please enter your username';
                                      }
                                      if(value.contains(" "))
                                      {
                                        return 'Username cannot contain spaces';
                                      }
                                      if(value.length < 6)
                                      {
                                        return 'Minimum length for username is 6 characters';
                                      }
                                      return null;
                                    },
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey[500]),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(9))),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.green[300]),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(9))),
                                          prefixIcon:
                                              Icon(Icons.account_circle),
                                          hintText: 'Username'),
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          color: Colors.black))),
                            ),
                          )
                        ],
                      ),
                      //email textfield
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 20.0, right: 20.0, bottom: 10),
                              child: Container(
                                  alignment: Alignment.center,
                                  height: 60.0,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(9.0)),
                                  child: TextFormField(
                                      validator: (value) {
                                      if (value.isEmpty) {
                                        return 'Please enter your password';
                                      }
                                      if(!value.contains("@")||!value.contains("."))
                                      {
                                        return 'Please enter email in the correct format';
                                      }
                                      return null;
                                    },
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey[500]),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(9))),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.green[300]),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(9))),
                                          prefixIcon: Icon(Icons.email),
                                          hintText: 'Email'),
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          color: Colors.black))),
                            ),
                          )
                        ],
                      ),
                      //mobile number
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 20.0, right: 20.0, bottom: 10.0),
                              child: Container(
                                  alignment: Alignment.center,
                                  height: 60.0,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(9.0)),
                                  child: TextFormField(
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return 'Please enter your mobile number';
                                      }
                                      if(value.length < 11)
                                      {
                                        return 'Please enter 11 numbers';
                                      }
                                      return null;
                                    },
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey[500]),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(9))),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.green[300]),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(9))),
                                          prefixIcon: Icon(Icons.add_call),
                                          hintText: 'Mobile number'),
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          color: Colors.black))),
                            ),
                          )
                        ],
                      ),

                      //Password textfield
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 20.0, right: 20.0, bottom: 10.0),
                              child: Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(9.0)),
                                  child: TextFormField(
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return 'Please enter your password';
                                      }
                                      if (value.length < 6) {
                                        return 'Minimum length for password 6 characters';
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.grey[500]),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(9))),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.green[300]),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(9))),
                                        prefixIcon: Icon(Icons.lock),
                                        hintText: 'Password'),
                                    style: TextStyle(
                                        fontSize: 20.0, color: Colors.black),
                                    obscureText: true,
                                  )),
                            ),
                          )
                        ],
                      ),
                      //signup button
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(right: 100, left: 100),
                              child: Container(
                                alignment: Alignment.center,
                                height: 60.0,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(9.0)),
                                child: FlatButton(
                                  child: Text("Signup",
                                      style: TextStyle(
                                          fontSize: 20.0, color: Colors.white)),
                                  onPressed: () {
                                    if (_formKeysignupB.currentState.validate()) {}
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]))
          ],
        ),
      ),
    ]))));
  }
}
