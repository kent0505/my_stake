import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/widgets/custom_scaffold.dart';
import '../../shop/pages/shop_page.dart';
import '../bloc/home_bloc.dart';
import '../widgets/nav_bar.dart';
import 'settings_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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

class _Home extends StatefulWidget {
  const _Home();

  @override
  State<_Home> createState() => _HomeState();
}

class _HomeState extends State<_Home> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('Home'),
      ],
    );
  }
}
