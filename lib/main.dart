import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_fireship_course/services/firestore.dart';

import 'firebase_options.dart';
import 'routes.dart';
import 'services/models.dart';
import 'theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider(
      create: (_) => FirestoreService().streamReport(),
      initialData: Report(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: appTheme,
        routes: appRoutes,
      ),
    );
  }
}
