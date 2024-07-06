import 'package:flutter/material.dart';

import '../../../core/widgets/custom_app_bar.dart';
import '../../../core/widgets/custom_scaffold.dart';
import '../models/stock.dart';
import '../widgets/current_coins_card.dart';

class StockPage extends StatelessWidget {
  const StockPage({super.key, required this.stock});

  final Stock stock;

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      body: Column(
        children: [
          CustomAppBar(),
          CurrentCoinsCard(),
        ],
      ),
    );
  }
}
