import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tailoringui/screens/dashboard.dart';
import 'package:tailoringui/screens/login.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyC9KKeOyEa54kxFwMIT_C2Jlps8CrN1qHw",
        appId: "1:927634292141:web:9c426ee60932f24ebaf524",
        messagingSenderId: "927634292141",
        projectId: "1:927634292141:web:9c426ee60932f24ebaf524"
    )
  );
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Dashboard(),
    );
  }
}
