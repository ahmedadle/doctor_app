

import 'package:flutter/material.dart';

class SingleDoc extends StatelessWidget {
  final String name, speciality, institute, image, patients;
  final int experience;

  const SingleDoc({
    required this.name,
    required this.speciality,
    required this.institute,
    required this.image,
    required this.experience,
    required this.patients,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctor Details'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            Center(
              child: Image.asset(image, height: 250),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Video Call'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Call'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Message'),
                ),
              ],
            ),
            SizedBox(height: 15),
            Text(
              speciality,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 5),
            Text(
              '$institute, MBBS, FCPS',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 15),
            Row(
              children: List.generate(
                5,
                (index) => Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text('Patients'),
                    Text(patients),
                  ],
                ),
                Column(
                  children: [
                    Text('Experience'),
                    Text('$experience Years'),
                  ],
                ),
                Column(
                  children: [
                    Text('Reviews'),
                    Text('2.4k'),
                  ],
                ),
              ],
            ),
            Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Book an Appointment'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//!!
// import 'package:flutter/material.dart';

// class SingleDoc extends StatelessWidget {
//   final String name, speciality, institute, image, patients;
//   final int experience;

//   const SingleDoc(
//       {required this.name,
//       required this.speciality,
//       required this.institute,
//       required this.image,
//       required this.experience,
//       required this.patients});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(.8),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               IconButton(
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//                 icon: Icon(Icons.arrow_back),
                
//               ),
//                       Text(name ?? 'namme',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),textAlign: TextAlign.center,),
//             ],
//           ),

//           SizedBox(
//             height: 15,
//           ),
//           Container(
//             width: double.infinity,
//             height: 250,
//             child: Image.asset(image ?? ''),
//           ),
//           SizedBox(
//             height: 15,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton(
//                 onPressed: () {},
//                 child: Text(' Video Call  '),
//                 style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.blue,
//                     padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(8))),
//               ),
//               SizedBox(
//                 width: 16,
//               ),
//               ElevatedButton(
//                 onPressed: () {},
//                 child: Text(' Call  '),
//                 style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.blue,
//                     padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(8))),
//               ),
//               SizedBox(
//                 width: 16,
//               ),
//               ElevatedButton(
//                 onPressed: () {},
//                 child: Text(' Massage '),
//                 style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.blue,
//                     padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(8))),
//               )
//             ],
//           ),
//           SizedBox(
//             height: 15,
//           ),
//           Text(
//             speciality ?? 'speciality',
//             style: TextStyle(fontSize: 18, color: Colors.black),
//           ),
//           SizedBox(
//             height: 5,
//           ),
//           Text(
//             '$institute ,MBBS,FCPS',
//             style: TextStyle(fontSize: 18, color: Colors.black),
//           ),
//           Row(
//             children: [
//               Icon(
//                 Icons.star,
//                 color: Colors.yellow,
//               ),
//               Icon(
//                 Icons.star,
//                 color: Colors.yellow,
//               ),
//               Icon(
//                 Icons.star,
//                 color: Colors.yellow,
//               ),
//               Icon(
//                 Icons.star,
//                 color: Colors.yellow,
//               ),
//               Icon(
//                 Icons.star,
//                 color: Colors.yellow,
//               ),
//               Icon(
//                 Icons.star,
//                 color: Colors.yellow,
//               )
//             ],
//           ),
//           SizedBox(
//             height: 30,
//           ),
//           Row(
//             children: [
//               Column(
//                 children: [
//                   Text(
//                     'patients\n$patients',
//                     style: TextStyle(fontSize: 18),
//                   ),
//                   SizedBox(
//                     width: 15,
//                   ),
//                   Text(
//                     'experience\n$experience',
//                     style: TextStyle(fontSize: 18),
//                   ),
//                   Text(
//                     'review\n2.4k',
//                     style: TextStyle(fontSize: 18),
//                   )
//                 ],
//               )
//             ],
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Container(
//             color: Colors.blue,
//             child: MaterialButton(
//               onPressed: () {},
//               colorBrightness: Brightness.dark,
//               padding: EdgeInsets.symmetric(horizontal: 150),
//               child: Text(
//                 'Book an Appointment',
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
