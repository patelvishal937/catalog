import 'package:catalog_app/screens/cart_screen.dart';
import 'package:catalog_app/screens/home_details_screen.dart';
import 'package:catalog_app/screens/login_screen.dart';
import 'package:catalog_app/utils/Routes.dart';
import 'package:catalog_app/widgets/thems.dart';
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.system,
        theme: Mytheme.lightTheme(context),
        darkTheme: Mytheme.darkTheme(context),
        debugShowCheckedModeBanner: false,
        initialRoute: "/Home",
        routes: {
          "/": (context) => const LoginScreen(),
          Routes.loginRoute: (context) => const LoginScreen(),
          Routes.homeRoute: (context) => const HomeScreen(),
          Routes.cartRoutes: (context) => const CartScreen(),
        });
  }
}
