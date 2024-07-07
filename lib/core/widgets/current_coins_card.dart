import 'package:flutter/material.dart';

import '../utils.dart';
import 'money_icon.dart';

class CurrentCoinsCard extends StatelessWidget {
  const CurrentCoinsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.transparent,
        height: 84,
        width: 240,
        child: Stack(
          children: [
            Center(
              child: Container(
                height: 42,
                width: 204,
                decoration: BoxDecoration(
                  color: const Color(0xff7F04A8),
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Center(
                  child: Text(
                    '$myCoins'.replaceAll('.0', ''),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            const Positioned(
              left: -2,
              top: 15,
              child: Center(child: MoneyIcon(percent: 100)),
            ),
          ],
        ),
      ),
    );
  }
}
