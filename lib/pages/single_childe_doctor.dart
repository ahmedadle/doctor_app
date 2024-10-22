import 'package:doctor/models/RecommendDoctor.dart';
import 'package:doctor/widget/single_doc.dart';
import 'package:flutter/material.dart';

class SingleChildeDoctor extends StatelessWidget {
  const SingleChildeDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 223, 235, 246),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
      
          child: SingleDoc
          (name: demo_recommended_doctor[0].name
          , speciality: demo_recommended_doctor[1].speciality, 
          institute:demo_recommended_doctor[2].institute ,
           image: demo_recommended_doctor[3].image, 
           experience: demo_recommended_doctor[4].experience,
            patients: demo_recommended_doctor[5].patients),
        ),
      
    );
  }
}