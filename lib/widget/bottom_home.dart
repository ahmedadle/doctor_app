import 'package:doctor/pages/Appointment.dart';
import 'package:doctor/pages/Home.dart';
import 'package:doctor/pages/person.dart';
import 'package:doctor/pages/profile.dart';
import 'package:flutter/material.dart'; 

class BottomHome extends StatefulWidget { 
  const BottomHome({super.key}); 

  @override 
  _BottomeHomeState createState() => _BottomeHomeState(); 
} 

class _BottomeHomeState extends State<BottomHome> { 
  int _selectedIndex = 0;  


  final List<Widget> _screens = [ 
    Home(),
    Person(),
    Appointment(),
    Profile()
  
  ]; 

  void _onItemTapped(int index) { 
    setState(() { 
      _selectedIndex = index;  
    }); 
  } 
 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      backgroundColor: Colors.white, 
      body: _screens[_selectedIndex],  
      bottomNavigationBar: BottomNavigationBar( 
        items: const <BottomNavigationBarItem>[ 
          BottomNavigationBarItem( 
            icon: Icon(Icons.home), 
            label: 'Home', 
          ), 
          BottomNavigationBarItem( 
            icon: Icon(Icons.people), 
            label: 'Specialists', 
          ), 
          BottomNavigationBarItem( 
            icon: Icon(Icons.calendar_today), 
            label: 'Appointments', 
          ), 
          BottomNavigationBarItem( 
            icon: Icon(Icons.person), 
            label: 'Profile', 
          ), 
        ], 
        currentIndex: _selectedIndex, 
        selectedItemColor: Colors.blue, 
        unselectedItemColor: Colors.black, 
        onTap: _onItemTapped,  
      ), 
    ); 
  } 
}