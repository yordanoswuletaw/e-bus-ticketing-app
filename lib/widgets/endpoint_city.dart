import 'package:flutter/material.dart';

class EndPointCity extends StatelessWidget {
  const EndPointCity({
    Key? key,
    required this.top,
    required this.left,
    required this.city,
    required this.departplace,
    required this.color,
  }) : super(key: key);

  final double top;
  final double left;
  final String city;
  final String departplace;
  final Color color;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      top: top,
      left: left,
      child: Container(
        width: size.width * .65,
        height: 48,
        child: Row(
          children: [
            const SizedBox(width: 16.0),
            CircleAvatar(
              backgroundColor: color,
              radius: 4.0,
            ),
            const SizedBox(width: 24),
            Text(
              city,
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary.withOpacity(.9),
                fontWeight: FontWeight.w700,
                fontSize: 12.0,
              ),
            ),
            const SizedBox(width: 8),
            Flexible(
              child: Text(
                departplace,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color:
                      Theme.of(context).colorScheme.secondary.withOpacity(.3),
                  fontWeight: FontWeight.w700,
                  fontSize: 12.0,
                ),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            width: 1.5,
            color: Theme.of(context).colorScheme.secondary.withOpacity(.15),
          ),
        ),
      ),
    );
  }
}
