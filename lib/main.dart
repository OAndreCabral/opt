import 'package:flutter/material.dart';
import 'package:opt/screens/internships_screen.dart';
import 'package:opt/screens/module_screen.dart';
import 'package:opt/screens/profile_screen.dart';
import 'package:opt/screens/creating_screen.dart';
import 'package:opt/screens/task_screen.dart';

import 'components/facespot/face_spot_small.dart';
import 'components/header_texts/text_interns_screen.dart';
import 'screens/students_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "OPT",
      home: StudentsListScreen(),
    );
  }
}