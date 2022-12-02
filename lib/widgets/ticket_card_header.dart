import 'package:e_bus_ticketing/config/config.dart';
import 'package:flutter/material.dart';

class TicketCardHeader extends StatelessWidget {
  const TicketCardHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.secondary,
              radius: 16.0,
              child: const Icon(
                Icons.bus_alert_rounded,
                color: green500,
                size: 14,
              ),
            ),
            const SizedBox(width: 12.0),
            Column(
              children: [
                Text(
                  'Abay bus',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'bus ticket',
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontWeight: FontWeight.w600,
                    fontSize: 13.0,
                  ),
                ),
              ],
            )
          ],
        ),
        Text(
          '600 ETB',
          style: TextStyle(
            color: Theme.of(context).colorScheme.secondary,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
