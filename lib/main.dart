import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/data/shop.dart';
import 'package:shop_app/data/theme_model.dart';
import 'package:shop_app/screens/cartpage.dart';
import 'package:shop_app/screens/intropage.dart';
import 'package:shop_app/screens/shoppage.dart';
import 'package:shop_app/scrollbehavior.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => Shop(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: const IntroPage(),
      routes: {
        '/intropage': (context) => const IntroPage(),
        '/shoppage': (context) => const ShopPage(),
        '/cartpage': (context) => const CartPage(),
      },
    );
  }
}
