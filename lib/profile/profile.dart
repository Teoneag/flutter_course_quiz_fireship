import 'package:flutter/material.dart';

import '../services/auth.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: ElevatedButton(
        onPressed: AuthService().signOut,
        // ToDo move to login screen
        child: const Text('Sign Out'),
      ),
    );
  }
}
