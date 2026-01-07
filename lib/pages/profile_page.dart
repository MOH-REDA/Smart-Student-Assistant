import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.primary,
        foregroundColor: theme.colorScheme.onPrimary,
        centerTitle: true,
        elevation: 0,
        title: const Text('Profil'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 32),

              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 24,
                    horizontal: 32,
                  ),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundImage:
                        const AssetImage('assets/images/plaze.jpg'),
                      ),
                      const SizedBox(height: 16),

                      Text(
                        'Le plaze',
                        style: theme.textTheme.headlineMedium,
                      ),
                      const SizedBox(height: 4),

                      Text(
                        'leplaze47@email.la',
                        style: theme.textTheme.bodyMedium,
                      ),

                      const SizedBox(height: 16),
                      Divider(color: theme.dividerColor),

                      const SizedBox(height: 12),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.school,
                              color: theme.colorScheme.primary),
                          const SizedBox(width: 8),
                          Text(
                            'Dev Multimedia – 3e année',
                            style: theme.textTheme.bodyMedium,
                          ),
                        ],
                      ),

                      const SizedBox(height: 8),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.badge,
                              color: theme.colorScheme.primary),
                          const SizedBox(width: 8),
                          Text(
                            'Student ID: 2025-LIA',
                            style: theme.textTheme.bodyMedium,
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Text(
                        'Étudiant passionné par le développement mobile et web.',
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodyMedium,
                      ),

                      const SizedBox(height: 20),

                      ElevatedButton(
                        onPressed: null,
                        child: const Text('Modifier le profil'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
