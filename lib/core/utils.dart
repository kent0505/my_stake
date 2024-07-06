import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';

bool onboarding = true;
int myCoins = 10000;

Future<void> getData() async {
  final prefs = await SharedPreferences.getInstance();
  // await prefs.remove('onboarding');
  onboarding = prefs.getBool('onboarding') ?? true;
  myCoins = prefs.getInt('myCoins') ?? 10000;

  log('$onboarding');
}

Future<void> saveData() async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setBool('onboarding', false);
}
