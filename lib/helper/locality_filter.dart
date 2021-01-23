import 'package:flutter/material.dart';

class Locality extends StatefulWidget {
  @override
  _LocalityState createState() => _LocalityState();
}

class _LocalityState extends State<Locality> {
  var _locality = false;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ListTile(
        title: Text('Locality'),
        trailing: Icon(_locality ? Icons.expand_less : Icons.expand_more),
        onTap: () {
          _locality = !_locality;
        },
      ),
    ]);
  }
}
