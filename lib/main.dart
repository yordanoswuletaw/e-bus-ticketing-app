import 'package:e_bus_ticketing/config/config.dart';
import 'package:e_bus_ticketing/routes/routes.dart';
import 'package:e_bus_ticketing/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MaterialApp(
        title: 'Abay Bus',
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.system,
        routes: routes,
        initialRoute: SignInPage.routeName,
      ),
      designSize: const Size(540, 960),
    );
  }
}
