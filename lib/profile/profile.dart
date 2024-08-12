import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/auth.dart';
import '../services/models.dart';
import '../shared/loading.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    var report = Provider.of<Report>(context);
    var user = AuthService().user;

    if (user == null) return const Loader();

    return Scaffold(
      appBar: AppBar(
        title: Text(user.displayName ?? 'Guest'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: const EdgeInsets.only(top: 50),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(user.photoURL ??
                      'https://www.gravatar.com/avatar/placeholder'),
                ),
              ),
            ),
            Text(user.email ?? '',
                style: Theme.of(context).textTheme.headlineSmall),
            const Spacer(),
            Text('${report.total}',
                style: Theme.of(context).textTheme.headlineMedium),
            Text('Quizzes Completed',
                style: Theme.of(context).textTheme.headlineMedium),
            const Spacer(),
            ElevatedButton(
              child: const Text('Log out'),
              onPressed: () async {
                await AuthService().signOut();
                if (mounted) {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('/', (route) => false);
                }
              },
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
