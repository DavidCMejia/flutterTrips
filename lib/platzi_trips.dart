import 'package:flutter/material.dart';
import 'home_trips.dart';
import 'search_trips.dart';
import 'profile_trips.dart';

class PlatziTrips extends StatefulWidget {
  const PlatziTrips({super.key});

  @override
  State<PlatziTrips> createState() => _PlatziTripsState();
}

class _PlatziTripsState extends State<PlatziTrips> {
  int indexTap = 0;

  final List<Widget> widgetsChildren = [
    const HomeTrips(),
    const SearchTrips(),
    const ProfileTrips(),
  ];

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
    // print('indexTap is now: $indexTap');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: widgetsChildren[indexTap],
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
            primaryColor: Colors.purple,
          ),
          child: BottomNavigationBar(
            onTap: onTapTapped,
            currentIndex: indexTap,
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
