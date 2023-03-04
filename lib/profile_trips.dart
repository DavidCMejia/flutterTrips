import 'package:flutter/material.dart';

class ProfileTrips extends StatelessWidget {
  const ProfileTrips({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              const UserAccountsDrawerHeader(
                accountName: Text('John Doe'),
                accountEmail: Text('email@example.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://www.w3schools.com/howto/img_avatar.png'),
                ),
              ),
              Card(
                child: Column(
                  children: [
                    const ListTile(
                      leading: Icon(Icons.photo_album),
                      title: Text('Album'),
                      subtitle: Text('Description'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          child: const Text('CANCEL'),
                          onPressed: () {},
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          child: const Text('OK'),
                          onPressed: () {},
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
