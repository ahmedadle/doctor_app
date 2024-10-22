import 'package:doctor/models/AvailableDoctor.dart';
import 'package:doctor/models/RecommendDoctor.dart';
import 'package:doctor/widget/single_doc.dart';
import 'package:flutter/material.dart';

class ListView3 extends StatelessWidget {
  ListView3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: 180,
        width: double.infinity,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: demoAvailableDoctors.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
              
                
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SingleDoc(
                        name: demo_recommended_doctor[index].name,
                        speciality: demo_recommended_doctor[index].speciality,
                        institute:
                            "Institute Name", // Add actual institute data if needed
                        image: demo_recommended_doctor[index].image,
                        experience: demo_recommended_doctor[index].experience,
                        patients: demo_recommended_doctor[index].patients,
                      ),
                    ),
                  );
                
              },
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(padding: EdgeInsets.all(10)),
                              Container(
                                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: Text(
                                    demoAvailableDoctors[index].name.toString(),
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.start,
                                  )),
                              Text(
                                demoAvailableDoctors[index].sector.toString(),
                                style: TextStyle(
                                    fontSize: 10,
                                    color:
                                        const Color.fromARGB(255, 36, 36, 36)),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Experens',
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Color.fromARGB(255, 36, 36, 36)),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        demoAvailableDoctors[index]
                                            .experience
                                            .toString(),
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Years',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Column(
                                children: [
                                  Text('Patients'),
                                  Text(
                                    demoAvailableDoctors[index]
                                        .patients
                                        .toString(),
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ]),
                        Container(
                            height: 145,
                            child: Image.asset(
                              demoAvailableDoctors[index].image.toString(),
                            )),
                      ]),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
