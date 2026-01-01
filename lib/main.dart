import 'package:flutter/material.dart';
import 'package:student_assistant/pages/home_page.dart';
import 'package:student_assistant/theme/app_theme.dart';

void main(){
  runApp(const SmartStudentApp());
}

class SmartStudentApp extends StatelessWidget {
  const SmartStudentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SMart Student Assistant',
      theme: AppTheme.lightTheme,
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
