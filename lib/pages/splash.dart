import 'package:doctor/core/routs/routs_name.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/back.jpg'),
              fit: BoxFit.fitHeight)),
      child: Column(
        children: [
          SizedBox(
            height: 300,
          ),
          Text(
            'Gerad',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 40, color: Colors.white),
          ),
          SizedBox(
            height: 300,
          ),
          Container(
            color: Colors.white24,
            child: MaterialButton(
              onPressed: () {},
              colorBrightness: Brightness.dark,
              padding: EdgeInsets.symmetric(horizontal: 150),
              child: Text(
                'Sign Up',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.white24,
            child: MaterialButton(
              onPressed: () {
                setState(() {
                  Navigator.of(context).pushNamed(RoutsName.SignIN);
                });
              },
              colorBrightness: Brightness.dark,
              padding: EdgeInsets.symmetric(horizontal: 150),
              child: Text(
                'Sign In',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
