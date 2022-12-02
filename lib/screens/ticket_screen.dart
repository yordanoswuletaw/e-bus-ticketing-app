import 'package:e_bus_ticketing/config/config.dart';
import 'package:e_bus_ticketing/widgets/widgets.dart';
import 'package:flutter/material.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ticket History',
          style: TextStyle(
            color: Theme.of(context).colorScheme.secondary,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            HistoryItem(),
            HistoryItem(),
            HistoryItem(),
            HistoryItem(),
            HistoryItem(),
            HistoryItem(),
            HistoryItem(),
          ],
        ),
      ),
    );
  }
}
