import 'package:flutter/material.dart';

class PlaziTrips extends StatefulWidget {
  const PlaziTrips({super.key});

  @override
  State<PlaziTrips> createState() => _PlaziTripsState();
}

class _PlaziTripsState extends State<PlaziTrips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors.white,
        primaryColor: Colors.purple,
      ),
      child: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    ));
  }
}
