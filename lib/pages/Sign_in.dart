import 'package:doctor/core/routs/routs_name.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.fromLTRB(15, 15, 15, 100),
          child: Column(
            children: [
              Text(
                'Sign in',
                style: TextStyle(color: Colors.black, fontSize: 30),
                textAlign: TextAlign.left,
              ),
              Text(
                'Don n have an account ? sign up!',
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Email', border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'password', border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Forgot your password ?',
                style: TextStyle(
                  color: Color.fromARGB(255, 181, 185, 215),
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.blue,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(RoutsName.Home);
                    Navigator.of(context).pushNamed(RoutsName.Bottom_Home);
                  },
                  colorBrightness: Brightness.dark,
                  padding: EdgeInsets.symmetric(horizontal: 150),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
