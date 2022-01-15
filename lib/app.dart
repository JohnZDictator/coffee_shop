import 'package:flutter/material.dart';

class CoffeeShoppingApp extends StatelessWidget {
  const CoffeeShoppingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Coffee Shopping',
      home: CoffeeShopHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CoffeeShopHome extends StatelessWidget {
  const CoffeeShopHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coffee Shop Home Page'),
      ),
      body: const Center(
        child: Text('Welcome'),
      ),
    );
  }
}
