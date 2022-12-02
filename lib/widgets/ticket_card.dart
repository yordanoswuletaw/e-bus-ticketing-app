import 'package:e_bus_ticketing/config/config.dart';
import 'package:e_bus_ticketing/screens/screens.dart';
import 'package:e_bus_ticketing/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TicketCard extends StatelessWidget {
  const TicketCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 13.0, vertical: 8.0),
      padding: const EdgeInsets.symmetric(horizontal: 13.0, vertical: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          width: 1.5,
          color: Theme.of(context).colorScheme.secondary.withOpacity(.15),
        ),
      ),
      child: Column(
        children: [
          const TicketCardHeader(),
          const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 120,
                width: size.width * .65,
                child: Stack(
                  children: [
                    const EndPointCity(
                      top: 8.0,
                      left: 0.0,
                      city: 'Addis Abeba',
                      departplace: 'Lam Beret',
                      color: green500,
                    ),
                    const EndPointCity(
                      top: 70.0,
                      left: 0.0,
                      city: 'Bahir Dar',
                      departplace: 'Papires',
                      color: Colors.redAccent,
                    ),
                    Positioned(
                      left: 24.0,
                      top: 64.0,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 2.0),
                        color: Theme.of(context).scaffoldBackgroundColor,
                        child: Text(
                          'To',
                          style: TextStyle(
                            color: Theme.of(context)
                                .colorScheme
                                .secondary
                                .withOpacity(.3),
                            fontWeight: FontWeight.w700,
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 24.0,
                      top: 2.0,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 2.0),
                        color: Theme.of(context).scaffoldBackgroundColor,
                        child: Text(
                          'From',
                          style: TextStyle(
                            color: Theme.of(context)
                                .colorScheme
                                .secondary
                                .withOpacity(.3),
                            fontWeight: FontWeight.w700,
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {},
                color: Theme.of(context).brightness == Brightness.light
                    ? Theme.of(context).scaffoldBackgroundColor
                    : Theme.of(context).colorScheme.primaryVariant,
                elevation: 6,
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                minWidth: 50,
                height: 50,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(
                  CupertinoIcons.arrow_2_circlepath,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  '700km   20hr30mn',
                  style: TextStyle(
                    color:
                        Theme.of(context).colorScheme.secondary.withOpacity(.3),
                    fontWeight: FontWeight.w700,
                    fontSize: 12.0,
                  ),
                ),
              ),
              TextButton.icon(
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BookingScreen()),
                      ),
                  icon: const Icon(Icons.double_arrow_rounded),
                  label: const Text('Book Now'))
            ],
          )
        ],
      ),
    );
  }
}
