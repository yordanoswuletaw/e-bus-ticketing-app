import 'package:e_bus_ticketing/config/config.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 80.0,
      backgroundColor: green500,
      leading: null,
      floating: true,
      automaticallyImplyLeading: false,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(90.0),
        ),
      ),
      title: Padding(
        padding: const EdgeInsets.only(
            right: 8.0, left: 32.0, top: 8.0, bottom: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Abay',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Theme.of(context).colorScheme.primaryVariant,
                        ),
                      ),
                      TextSpan(
                        text: ' Bus',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).colorScheme.primaryVariant,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.travel_explore,
                  color: Theme.of(context).scaffoldBackgroundColor,
                )
              ],
            ),
            const SizedBox(height: 12.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Depart 10 April - return 16 april',
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.primaryVariant,
                  ),
                ),
                Text(
                  'travel results',
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.primaryVariant,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
