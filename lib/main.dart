import 'package:aaaaaa/calendar_screen/calendar_screen.dart';
import 'package:aaaaaa/firebase_options.dart';
import 'package:aaaaaa/register_login_screen/register_login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async{
  // WidgetsFlutterBinding.ensureInitialized();


  // await Firebase.initializeApp(
  //     options: DefaultFirebaseOptions.currentPlatform
  //   );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
     
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: CalendarScreen(),
    );
  }
}

