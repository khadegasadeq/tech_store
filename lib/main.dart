import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/shop_provider.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ShopProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tech Store',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffF8FAFC),
        primaryColor: const Color(0xff2563EB),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff2563EB),
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}