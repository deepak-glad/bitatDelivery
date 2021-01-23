import 'package:flutter/material.dart';

class Services extends StatelessWidget {
  static const routeName = 'services-page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Services',
          style: TextStyle(color: Color.fromRGBO(255, 200, 0, 1)),
        ),
        iconTheme: IconThemeData(color: Color.fromRGBO(255, 200, 0, 1)),
      ),
    );
  }
}
