import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        centerTitle: true,
        elevation: 0,
        title: const Text('Paramètres'),
      ),
      body: ListView(
        children: [
          SwitchListTile(
            title: Text(
              'Mode sombre',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            value: false,
            onChanged: (value) {},
          ),
          SwitchListTile(
            title: Text(
              'Notifications',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            value: true,
            onChanged: (value) {},
          ),
          ListTile(
            title: Text(
              'Langue',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            subtitle: Text(
              'Français',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
