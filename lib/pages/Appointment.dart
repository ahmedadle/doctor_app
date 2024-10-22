import 'package:flutter/material.dart';
class Appointment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Appointment"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InfoColumn("Date", "18/9/2024"),
                    InfoColumn("Time", "10:30 PM"),
                    InfoColumn("Doctor", "Dr. Adam"),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InfoColumn("Type", "Dentist"),
                    InfoColumn("Place", "City Clinic"),
                  ],
                ),
                SizedBox(height: 16),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red, // لون الزر
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    ),
                    onPressed: () {
                      // Action when "Cancel" is pressed
                    },
                    child: Text('Cancel'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InfoColumn extends StatelessWidget {
  final String label;
  final String value;

  InfoColumn(this.label, this.value);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        SizedBox(height: 4),
        Text(
          value,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

// class Appointment extends StatelessWidget {
//   const Appointment({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       appBar: AppBar(title: Text('My Appointments',style: TextStyle(color: Colors.black,fontSize: 20),),),
//       backgroundColor: Color.fromARGB(255, 206, 224, 235),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Card(
//         elevation: 4,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                     Row(
//             children: [
//               Text('date \n 18/9/2024',style: TextStyle(color: const Color.fromARGB(255, 37, 37, 37)),),
//               Text("time \n 10:00",style: TextStyle(color: const Color.fromARGB(255, 37, 37, 37)),),
//               Text('doctor\n Dr.Ahmed',style: TextStyle(color: const Color.fromARGB(255, 37, 37, 37)),)
//               ,Divider(thickness: 1,),
//               Row(
//                 children: [
//                   Text('Tyep\n Dentiest',style: TextStyle(color: const Color.fromARGB(255, 37, 37, 37)),),
//                   Text('place\n city clinic',style: TextStyle(color: const Color.fromARGB(255, 37, 37, 37)),),
//                         TextButton(onPressed: (){}, child: Text('cancel',style: TextStyle(color: Colors.orange,))),
//                 ],
//               )
//             ],
//                     )
                    
//               ],
                    
//             ),
//           ),
          
//         ),
//       ),
//     );
//   }
// }