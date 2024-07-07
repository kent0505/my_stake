import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SellButton extends StatelessWidget {
  const SellButton({
    super.key,
    required this.sell,
    required this.onPressed,
  });

  final bool sell;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 235,
      decoration: BoxDecoration(
        color: const Color(0xff7F04A8),
        borderRadius: BorderRadius.circular(8),
      ),
      child: CupertinoButton(
        onPressed: onPressed,
        padding: EdgeInsets.zero,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 12,
              width: 12,
              decoration: BoxDecoration(
                color: const Color(0xffD9D9D9),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Center(
                child: Image.asset(
                  sell ? 'assets/sell2.png' : 'assets/sell1.png',
                  height: 8,
                ),
              ),
            ),
            const SizedBox(width: 2),
            Text(
              sell ? 'Sell' : 'Buy',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 9,
                fontWeight: FontWeight.w600,
                fontFamily: 'SF',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
