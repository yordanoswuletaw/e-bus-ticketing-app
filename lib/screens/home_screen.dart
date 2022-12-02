import 'package:e_bus_ticketing/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const l = [0, 1, 2, 3, 4, 5, 6, 7];
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const HomeAppBar(),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return const TicketCard();
            }, childCount: l.length),
          ),
        ],
      ),
    );
  }
}
