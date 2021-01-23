import 'package:bitetat_delivery/screens/Home_page.dart';
import 'package:bitetat_delivery/screens/about_us.dart';
import 'package:bitetat_delivery/screens/cantacts.dart';
import 'package:bitetat_delivery/screens/cart.dart';
import 'package:bitetat_delivery/screens/services.dart';
import 'package:bitetat_delivery/screens/signIn.dart';
import 'package:bitetat_delivery/screens/signUpAsVender.dart';
import 'package:bitetat_delivery/screens/signUpAscustomer.dart';
import 'package:flutter/material.dart';

class BackDrop extends StatelessWidget {
  final GlobalKey<PopupMenuButtonState<int>> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    PopupMenuButton<int>(
      key: _key,
      itemBuilder: (context) {
        return <PopupMenuEntry<int>>[
          PopupMenuItem(child: Text('0'), value: 0),
          PopupMenuItem(child: Text('1'), value: 1),
        ];
      },
    );
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Divider(
          color: Colors.black,
          thickness: 0.5,
        ),
        ListTile(
          title: Text(
            'Home',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          onTap: () {
            Navigator.of(context).pushNamed(MyHomePage.routeName);
          },
        ),
        Divider(
          color: Colors.black,
          thickness: 0.5,
        ),
        ListTile(
          title: Text(
            'About Us',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          onTap: () {
            Navigator.of(context).pushNamed(MyHomePage.routeName);
            Navigator.of(context).pushNamed(AboutUs.routeName);
          },
        ),
        Divider(
          color: Colors.black,
          thickness: 0.5,
        ),
        ListTile(
          title: Text(
            'Services',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          onTap: () {
            Navigator.of(context).pushNamed(MyHomePage.routeName);
            Navigator.of(context).pushNamed(Services.routeName);
          },
        ),
        Divider(
          color: Colors.black,
          thickness: 0.5,
        ),
        ListTile(
          title: Text(
            'Contacts',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          onTap: () {
            Navigator.of(context).pushNamed(MyHomePage.routeName);
            Navigator.of(context).pushNamed(Contacts.routename);
          },
        ),
        Divider(
          color: Colors.black,
          thickness: 0.5,
        ),
        ListTile(
          title: Text(
            'Sign In',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          onTap: () {
            Navigator.of(context).pushNamed(MyHomePage.routeName);
            Navigator.of(context).pushNamed(SignIn.routename);
          },
        ),
        Divider(
          color: Colors.black,
          thickness: 0.5,
        ),
        ListTile(
          title: Text(
            'Sign Up',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          trailing: PopupMenuButton<int>(
            onSelected: (value) {
              if (value == 0) {
                Navigator.of(context).pushNamed(MyHomePage.routeName);
                Navigator.of(context).pushNamed(SignUp.routename);
              } else {
                Navigator.of(context).pushNamed(MyHomePage.routeName);
                Navigator.of(context).pushNamed(SignUpAsVender.routename);
              }
            },
            key: _key,
            itemBuilder: (context) {
              return <PopupMenuEntry<int>>[
                PopupMenuItem(
                  child: Text('As customer'),
                  value: 0,
                ),
                PopupMenuItem(child: Text('As vendor'), value: 1),
              ];
            },
          ),
          onTap: () => _key.currentState.showButtonMenu(),
        ),
        Divider(
          color: Colors.black,
          thickness: 0.5,
        ),
        ListTile(
          leading: Icon(Icons.shopping_cart),
          title: Text('items-AED0.00',
              style: TextStyle(fontWeight: FontWeight.w600)),
          onTap: () {
            Navigator.of(context).pushNamed(MyHomePage.routeName);
            Navigator.of(context).pushNamed(CartScreen.routename);
          },
        ),
      ],
    );
  }
}
