import 'package:doctor/widget/list_veiw3.dart';
import 'package:doctor/widget/list_view_1.dart';
import 'package:doctor/widget/list_view_cats.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 239, 241),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 230, 239, 240),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Finde Your',
                style: TextStyle(fontSize: 20, color: Colors.black)),
            Text('Specialist',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold))
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.messenger))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(child: ListView1(), width: 380),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
         
                    
                     TweenAnimationBuilder(
                      tween: TextStyleTween(
                          begin: TextStyle(fontSize: 15.0) ,
                          end: TextStyle(fontSize: 25.5,fontWeight: FontWeight.bold,color: Colors.blue)),
                      duration: Duration(seconds:3),
                      curve: Curves.bounceOut,
                      builder: (context, value, child) {
                        return Container(
                          
                          child: Text(
                            ' Cetegory ',style: TextStyle(fontSize: value.fontSize,fontWeight: value.fontWeight,color: value.color),
                            
                          ),
                        );
                      },
                    ),
                  
                  Spacer(),
                  Text('see All')
                ],
              ),
            ),
            SizedBox(
              child: ListViewCats(),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Text(
                    'Available Doctoe',
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                  Spacer(),
                  Text('see All')
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              child: ListView3(
                
              ),
              width: 400,
            ),
          ],
        ),
      ),
    );
  }
}
