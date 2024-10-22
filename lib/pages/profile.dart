import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 223, 235, 246),
      appBar: AppBar(title: Text('Profile',style: TextStyle(color: Colors.black,fontSize: 20),textAlign: TextAlign.center,),
      actions: [Icon(Icons.settings)],
backgroundColor: Colors.white,
),
body: Column(
children: [
  Container(
alignment: Alignment.center,
child: Image.asset('assets/images/user_pic.png',fit:BoxFit.cover ),)
,SizedBox(height: 15,)
,TextFormField(
                decoration: InputDecoration(
                  
                    labelText: 'Name', border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                
                decoration:
                InputDecoration(
                    labelText: 'Email@...', border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Phone', border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Rampur', border: OutlineInputBorder()),
              ),



],),




    );
  }
}
