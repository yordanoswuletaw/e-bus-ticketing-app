import 'package:e_bus_ticketing/screens/screens.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Profile',
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
              fontWeight: FontWeight.w700,
            ),
          ),
          backgroundColor: Theme.of(context).colorScheme.primary,
          elevation: 0,
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
          child: Column(
            children: [
              const Text(
                "Name",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "ebelu@gmail.com",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "0912345678",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
              TextButton(
                onPressed: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ChangeEmail()))
                },
                child: const Text('Change Email'),
              ),
              TextButton(
                  onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ChangePhone()))
                      },
                  child: const Text('Change PhoneNumber')),
              TextButton(
                  onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ChangePass()))
                      },
                  child: const Text('Change Password')),
            ],
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
        )));
  }
}
