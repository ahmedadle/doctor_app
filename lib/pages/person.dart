import 'package:doctor/models/AvailableDoctor.dart';
import 'package:doctor/widget/Doctors_veiw.dart';
import 'package:flutter/material.dart';

class Person extends StatelessWidget {
  const Person({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 239, 241),
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Avilable',
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        
            
            child: GridView.builder(
              
              itemCount: demoAvailableDoctors.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        
                     crossAxisCount: 2, // عدد الأعمدة في الشبكة
            childAspectRatio: 0.8, // نسبة العرض إلى الارتفاع لتخطيط العنصر
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
                    
                    ),
                itemBuilder: (context, index) {
                  return DoctorVeiw(
                    name: demoAvailableDoctors[index].name,
                    sector: demoAvailableDoctors[index].sector,
                    experience: demoAvailableDoctors[index].experience,
                    patients: demoAvailableDoctors[index].patients,
                    image: demoAvailableDoctors[index].image,
        
        
                  );
                })),
      
    );
  }
}
