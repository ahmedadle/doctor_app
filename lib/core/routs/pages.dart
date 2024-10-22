import 'package:doctor/core/routs/routs_name.dart';
import 'package:doctor/pages/Home.dart';
import 'package:doctor/pages/Sign_in.dart';
import 'package:doctor/pages/person.dart';
import 'package:doctor/pages/profile.dart';
import 'package:doctor/pages/single_childe_doctor.dart';
import 'package:doctor/pages/splash.dart';
import 'package:doctor/widget/bottom_home.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static Route<dynamic> generate(RouteSettings? settings) {
    switch (settings?.name) {
      case RoutsName.Splash:
        return MaterialPageRoute(builder: (_) {
          return const Splash();
        });
      case RoutsName.SignIN:
        return MaterialPageRoute(builder: (_) {
          return const SignIn();
        });
      case RoutsName.Home:
        return MaterialPageRoute(builder: (_) {
          return const Home();
        });
      case RoutsName.Profile:
        return MaterialPageRoute(builder: (_) {
          return const Profile();
        });
      case RoutsName.Bottom_Home:
        return MaterialPageRoute(builder: (_) {
          return const BottomHome();
        });
      case RoutsName.Persson:
        return MaterialPageRoute(builder: (_) {
          return Person();
        });
      case RoutsName.single_childe_doctor:
        return MaterialPageRoute(builder: (_) {
          return SingleChildeDoctor();
        });
      
        
        default:
        throw Exception('Route not found!'); 
    }
  }
}
