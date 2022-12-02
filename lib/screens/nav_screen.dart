import 'package:e_bus_ticketing/config/config.dart';
import 'package:e_bus_ticketing/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NavScreen extends StatelessWidget {
  const NavScreen({Key? key}) : super(key: key);

  static const routeName = '/navscreen';

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness:
            Theme.of(context).brightness == Brightness.light
                ? Brightness.dark
                : Brightness.light,
        systemNavigationBarColor:
            Theme.of(context).scaffoldBackgroundColor == white200
                ? white200
                : black100,
        systemNavigationBarIconBrightness:
            Theme.of(context).brightness == Brightness.light
                ? Brightness.dark
                : Brightness.light,
      ),
    );
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: const TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            HomeScreen(),
            TicketScreen(),
            ProfileScreen(),
          ],
        ),
        bottomNavigationBar: TabBar(
          indicator: const BoxDecoration(
            border: Border(
              top: BorderSide.none,
            ),
          ),
          unselectedLabelColor: Theme.of(context).colorScheme.secondary,
          labelColor: Theme.of(context).colorScheme.primary,
          tabs: [
            bottomTab(Icons.home_rounded, 'home'),
            bottomTab(Icons.airplane_ticket_rounded, 'ticket'),
            bottomTab(Icons.person_rounded, 'profile'),
          ],
        ),
      ),
    );
  }

  Tab bottomTab(icon, label) {
    return Tab(
      height: 50,
      iconMargin: EdgeInsets.zero,
      icon: Icon(icon),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 10.0,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
