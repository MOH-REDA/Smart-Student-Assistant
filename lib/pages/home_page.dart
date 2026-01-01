import 'package:flutter/material.dart';
import 'package:student_assistant/widgets/app_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Acceuil'),
      ),
      drawer: const AppDrawer(),
      body: Center(
        child: Text(
          'hallo etudiant',
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center, )
      ),
    );
  }
}
