import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/config/app_colors.dart';
import '../../../core/widgets/money_icon.dart';
import '../models/stock.dart';

class StockCard extends StatelessWidget {
  const StockCard({
    super.key,
    required this.stock,
  });

  final Stock stock;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 67,
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(8),
      ),
      child: CupertinoButton(
        onPressed: () {},
        padding: EdgeInsets.zero,
        child: Row(
          children: [
            const SizedBox(width: 11),
            Image.asset('assets/${stock.asset}.png', height: 60),
            const SizedBox(width: 11),
            Text(
              stock.title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: 'SF',
              ),
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      stock.grow < 0 ? 'assets/grow2.svg' : 'assets/grow1.svg',
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '${stock.grow}%',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 9,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'SF',
                      ),
                    ),
                  ],
                ),
                const Text(
                  'Price',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'SF',
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '${stock.price}',
                      style: const TextStyle(
                        color: AppColors.pink,
                        fontSize: 9,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'SF',
                      ),
                    ),
                    const MoneyIcon(percent: 30),
                  ],
                ),
              ],
            ),
            const SizedBox(width: 16),
          ],
        ),
      ),
    );
  }
}
