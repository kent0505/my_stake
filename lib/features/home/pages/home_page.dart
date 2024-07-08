import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils.dart';
import '../../../core/widgets/current_coins_card.dart';
import '../../../core/widgets/custom_scaffold.dart';
import '../../shop/pages/shop_page.dart';
import '../../stock/bloc/stock_bloc.dart';
import '../bloc/home_bloc.dart';
import '../widgets/empty_data.dart';
import '../widgets/generate_card.dart';
import '../widgets/my_stock_card.dart';
import '../widgets/nav_bar.dart';
import '../widgets/your_stock_card.dart';
import 'settings_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    getMyStocks();
    Timer.periodic(const Duration(seconds: 2), (Timer t) {
      context.read<StockBloc>().add(ChangePriceEvent());
    });
  }

  @override
  void dispose() {
    _timer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).viewPadding.top),
          Expanded(
            child: Stack(
              children: [
                BlocBuilder<HomeBloc, HomeState>(
                  builder: (context, state) {
                    if (state is HomeShop) return const ShopPage();

                    if (state is HomeSettings) return const SettingsPage();

                    return const _Home();
                  },
                ),
                const NavBar(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Home extends StatelessWidget {
  const _Home();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              SizedBox(height: 20),
              CurrentCoinsCard(),
              SizedBox(height: 7),
              GenerateCard(),
              SizedBox(height: 27),
              YourStockCard(),
            ],
          ),
        ),
        if (myStocks.isEmpty)
          const EmptyData()
        else
          Expanded(
            child: Column(
              children: [
                const SizedBox(height: 10),
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    children: [
                      ...List.generate(
                        myStocks.length,
                        (index) {
                          return MyStockCard(stock: myStocks[index]);
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 63 + MediaQuery.of(context).viewPadding.bottom,
                ),
              ],
            ),
          ),
      ],
    );
  }
}
