import 'package:flutter/material.dart';
import 'package:marketplace/pages/intropage.dart';
import 'package:provider/provider.dart';
import 'package:marketplace/provider/cartprovider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.grey),

        home: IntroPage(),
      ),
    );
  }
}
