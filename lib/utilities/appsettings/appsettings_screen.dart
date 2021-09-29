import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class AppSettingsScreen extends StatefulWidget {
  const AppSettingsScreen({Key? key}) : super(key: key);

  @override
  _AppSettingsScreenState createState() => _AppSettingsScreenState();
}

class _AppSettingsScreenState extends State<AppSettingsScreen> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: SettingsList(
        sections: [
          SettingsSection(
            titlePadding: const EdgeInsets.all(20),
            title: 'Section 1',
            tiles: [
              SettingsTile(
                title: 'Language',
                subtitle: 'English',
                leading: const Icon(Icons.language),
                onPressed: (BuildContext context) {},
              ),
              SettingsTile.switchTile(
                title: 'Use System Theme',
                leading: const Icon(Icons.phone_android),
                switchValue: isSwitched,
                onToggle: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
            ],
          ),
          SettingsSection(
            titlePadding: const EdgeInsets.all(20),
            title: 'Section 2',
            tiles: [
              SettingsTile(
                title: 'Open Source Licenses',
                subtitle: 'All licences',
                leading: const Icon(Icons.lock),
                onPressed: (BuildContext context) {},
              ),
              SettingsTile.switchTile(
                title: 'Automatically send feedback',
                leading: const Icon(Icons.fingerprint),
                switchValue: true,
                onToggle: (value) {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}