import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        centerTitle: true,
        elevation: 0,
        title: const Text('À propos'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Smart Student Assistant',
                style: theme.textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),

              Text(
                'Smart Student Assistant est une application mobile développée dans le cadre '
                    'du module de développement Flutter. Elle a pour objectif d’accompagner '
                    'les étudiants dans leur environnement académique à travers une interface '
                    'simple, claire et cohérente.',
                style: theme.textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),

              Text(
                'Ce projet pédagogique permet de mettre en pratique les concepts fondamentaux '
                    'de Flutter, notamment les widgets, la navigation entre pages, la consommation '
                    'd’API REST, l’intégration d’un chatbot et l’utilisation d’un thème global, '
                    'sans recourir à un state management avancé.',
                style: theme.textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
