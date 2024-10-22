import 'package:flutter/material.dart';

class DoctorVeiw extends StatelessWidget {
  final String? name, sector, patients, image;
  final int? experience;
  const DoctorVeiw(
      {super.key,
      this.name,
      this.sector,
      this.experience,
      this.patients,
      this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(0.5),
        child: Container(
          width: 300, 
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name ?? 'name',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        sector??'sector',
                        style: TextStyle(
                            fontSize: 10,
                            color: const Color.fromARGB(255, 83, 82, 82)),
                      ),
                      Text(
                        'experience',
                        style: TextStyle(
                            color: const Color.fromARGB(255, 83, 82, 82)),
                      ),
                      Text(
                        'patients',
                        style: TextStyle(fontSize: 4),
                      ),
                      Text(
                        patients?? 'patients',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 8,
                            color: const Color.fromARGB(255, 99, 98, 98)),
                      ),
                      Text(
                       'Experience  ',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        '${experience ?? 0} years',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                
                  
                    Container(
                      alignment: Alignment.topRight,
                      height: 150,width: 60,
                      child: Image.asset(image.toString(),
                      fit: BoxFit.cover,
                

                      ),
                    ),
                  
                  
                ],
              ),
            ),
          ),
        ));
  }
}
