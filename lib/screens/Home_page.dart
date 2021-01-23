import 'package:bitetat_delivery/widgets/backdrop.dart';
import 'package:bitetat_delivery/widgets/frontDetail.dart';
import 'package:flutter/material.dart';
import 'package:backdrop/backdrop.dart';

class MyHomePage extends StatelessWidget {
  static const routeName = 'home-page';
  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
        appBar: BackdropAppBar(
          automaticallyImplyLeading: false,
          actions: [BackdropToggleButton(color: Colors.yellow)],
          title: Image.asset(
            'assets/logo/logo.png',
            fit: BoxFit.cover,
            height: 60,
          ),
        ),
        headerHeight: 110.0,
        frontLayer: FrontDetail(),
        backLayer: BackDrop());
  }
}
