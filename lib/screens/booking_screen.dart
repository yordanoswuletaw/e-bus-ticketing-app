import 'package:e_bus_ticketing/config/config.dart';
import 'package:flutter/material.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Place(
                      place: "Addis Ababa",
                      start: "from",
                      station: "Lamberet",
                      color: green500,
                    ),
                    const Place(
                      place: "Bahir Dar",
                      start: "to",
                      station: "Papirus",
                      color: Colors.redAccent,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Date"),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "${DateTime.now().day}\\${DateTime.now().month}\\${DateTime.now().year} G.C",
                                  style: const TextStyle(fontSize: 20),
                                ),
                                Column(
                                  children: const [
                                    Text(
                                      "KM",
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "100",
                                      style: TextStyle(fontSize: 30),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        )),
                    const SizedBox(height: 24),
                    SizedBox(
                        width: 370,
                        height: 45,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              "Book now",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ))
                  ],
                ),
              ),
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 2.5, left: 50),
            ),
            Align(
              child: Container(
                padding: const EdgeInsets.only(left: 60, top: 30),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      'Trip Booking',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: 200,
                      child: Text(
                        'Travel With Comfortable Bus. Abay Bus for all.',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            overflow: TextOverflow.clip),
                      ),
                    ),
                  ],
                ),
                height: MediaQuery.of(context).size.height / 3,
                decoration: const BoxDecoration(
                    gradient: gradient1,
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(100))),
              ),
              alignment: Alignment.topCenter,
            ),
            Positioned(
              top: 48.0,
              right: 16.0,
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back_rounded, size: 32),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Place extends StatelessWidget {
  final String station;
  final String start;
  final String place;
  final Color color;
  const Place(
      {required this.station,
      required this.place,
      required this.start,
      required this.color,
      Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              child: Text(
                start,
                style: TextStyle(
                    fontSize: 13.0, color: color, fontWeight: FontWeight.w400),
              ),
              padding: const EdgeInsets.only(bottom: 10, top: 20),
            ),
            Row(
              children: [
                const SizedBox(width: 8.0),
                CircleAvatar(
                  backgroundColor: color,
                  radius: 4.0,
                ),
                const SizedBox(width: 16.0),
                Text(
                  place,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Padding(
                  child: Text(
                    station,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context)
                            .colorScheme
                            .secondary
                            .withOpacity(.3)),
                  ),
                  padding: const EdgeInsets.only(left: 30),
                )
              ],
            )
          ],
        ));
  }
}
