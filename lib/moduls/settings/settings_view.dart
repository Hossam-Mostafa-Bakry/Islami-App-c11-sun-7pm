import 'dart:developer';

import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  List<String> languages = [
    "English",
    "عربي",
  ];

  List<String> themes = [
    "Light",
    "Dark",
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Language",
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(height: 10),
          CustomDropdown<String>(
            hintText: 'Select job role',
            items: languages,
            onChanged: (value) {
              log('changing value to: $value');
            },
          ),
          const SizedBox(height: 50),
          Text(
            "Theme",
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(height: 10),
          CustomDropdown<String>(
            hintText: 'Select job role',
            items: themes,
            initialItem: themes[0],
            onChanged: (value) {
              log('changing value to: $value');
            },
          )
        ],
      ),
    );
  }
}
