import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  static const routename = 'cart-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
    );
  }
}
