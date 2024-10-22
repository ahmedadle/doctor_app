import 'package:flutter/material.dart';
@immutable
class ListView1 extends StatelessWidget {
  ListView1({super.key});
  List<Map> doctors = [
    {
      'title': 'loojing for your desire \nspecialist coctor?',
      'image': 'assets/images/Asma_Khan.png',
      'name': 'Dr. Salina Zaman',
      'specialty': "Medicine & Heart Specialist",
      'clinic': "Good Health Clinic",
    },
    {
      'title': 'loojing for your desire \nspecialist coctor?',
      "image": "assets/images/doctor_big_preview.png",
      "name": 'Dr. John Doe',
      "specialty": "Pediatrician",
      "clinic": "Healthy Kids Clinic",
    },
    {
      'title': 'loojing for your desire \nspecialist coctor?',
      "image": 'assets/images/kiran.png',
      "name": "Dr. Sarah Ali",
      "specialty": "Neurologist",
      "clinic": "Brain Health Clinic",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200
    ,
      child: ListView.builder(
        padding: EdgeInsets.all(5),
        scrollDirection: Axis.horizontal,
        itemCount: doctors.length,
        itemBuilder: (context, index) {
          return Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Color.fromARGB(255, 0, 115, 210),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Text(
                    doctors[index]['title'].toString(),
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.start,
                  ),
                  Expanded(child: Spacer()),
                  Text(doctors[index]['name'].toString(),
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.start),
                  Text(doctors[index]['specialty'].toString(),
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.start),
                  Text(doctors[index]['clinic'].toString(),
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.start)
                ],
              ),
              Container(
                height: 145,
                child: Image.asset(
                  doctors[index]['image'].toString(),
                  
                ),
              )
            ]),
          );
        },
      ),
    );
  }
}
