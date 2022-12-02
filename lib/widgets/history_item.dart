import 'package:flutter/material.dart';

class HistoryItem extends StatelessWidget {
  const HistoryItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            width: 1.5,
            color: Theme.of(context).colorScheme.secondary.withOpacity(.15),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 1),
          child: Stack(
            children: [
              Row(
                children: [
                  Expanded(
                      child: Container(
                        height: 200,
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Center(
                              child: Text(
                                'Travler Info',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                            Text('Name --- Getaye Temesgen'),
                            Text('Phone Number --- 333333333'),
                            Text('Email   ---- xxx@gmail.com'),
                            Text('from ---addis abeba'),
                            Text('to   --- bahir-dar'),
                            Text('date --- 25/12/2014'),
                            Text('seat Num. --- unknown'),
                            Text('Bus Num.   --- unknown'),
                            Text('starting point --- lam beret'),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                      ),
                      flex: 2),
                  Expanded(
                      child: Row(
                        children: [
                          const VerticalDivider(
                            width: 1,
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 200,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextButton.icon(
                                      onPressed: () {},
                                      icon: const Icon(Icons.more_time_rounded),
                                      label: const Text('Postpond Trip')),
                                  TextButton.icon(
                                      onPressed: () {},
                                      icon: const Icon(Icons.cancel_rounded),
                                      label: const Text('Cancel Trip')),
                                ],
                              ),
                              decoration: BoxDecoration(
                                color:
                                    Theme.of(context).scaffoldBackgroundColor,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(5),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      flex: 1)
                ],
              ),
              insideCornerCut(context, top: -15.0, bottom: null),
              insideCornerCut(context, bottom: -15.0, top: null)
            ],
          ),
        ),
      ),
    );
  }

  Positioned insideCornerCut(context, {top, bottom}) {
    return Positioned(
      child: Container(
        width: 30,
        height: 25,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary.withOpacity(.15),
            shape: BoxShape.circle),
      ),
      bottom: bottom,
      top: top,
      right: 140,
    );
  }
}
