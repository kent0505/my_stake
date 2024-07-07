import 'dart:math';

import 'package:shared_preferences/shared_preferences.dart';

bool onboarding = true;
double myCoins = 10000;

Future<void> getData() async {
  final prefs = await SharedPreferences.getInstance();
  // await prefs.remove('onboarding');
  onboarding = prefs.getBool('onboarding') ?? true;
  myCoins = prefs.getDouble('myCoins') ?? 10000;
}

Future<void> saveData() async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setBool('onboarding', false);
}

double getRandomPercent() {
  Random random = Random();
  double randomIndex = random.nextDouble() * random.nextDouble() * 6;
  double randomIndex2 = random.nextDouble() * -4;
  double data = randomIndex2 + randomIndex;
  double formattedValue = double.parse(data.toStringAsFixed(1));
  return formattedValue;
}
