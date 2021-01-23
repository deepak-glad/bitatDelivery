import 'package:bitetat_delivery/model/model.dart';
import 'package:bitetat_delivery/screens/Home_page.dart';
import 'package:bitetat_delivery/screens/about_us.dart';
import 'package:bitetat_delivery/screens/cantacts.dart';
import 'package:bitetat_delivery/screens/cart.dart';
import 'package:bitetat_delivery/screens/services.dart';
import 'package:bitetat_delivery/screens/signIn.dart';
import 'package:bitetat_delivery/screens/signUpAsVender.dart';
import 'package:bitetat_delivery/screens/signUpAscustomer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (cxt) => DetailProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.yellow,
          primaryColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.black,
        ),
        home: MyHomePage(),
        routes: {
          MyHomePage.routeName: (ctx) => MyHomePage(),
          AboutUs.routeName: (context) => AboutUs(),
          Services.routeName: (ctx) => Services(),
          Contacts.routename: (ctx) => Contacts(),
          SignIn.routename: (ctx) => SignIn(),
          SignUp.routename: (ctx) => SignUp(),
          SignUpAsVender.routename: (ctx) => SignUpAsVender(),
          CartScreen.routename: (ctx) => CartScreen(),
        },
      ),
    );
  }
}
