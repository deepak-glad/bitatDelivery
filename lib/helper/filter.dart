import 'package:flutter/material.dart';

import 'category_filter.dart';
import 'locality_filter.dart';

class FilterDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Card(
        elevation: 2.5,
        shadowColor: Colors.black,
        margin: const EdgeInsets.all(15),
        child: Column(
          children: [
            CategoryFilter(),
            Locality(),
            FlatButton(
              minWidth: MediaQuery.of(context).size.width - 20,
              color: Colors.yellow,
              onPressed: () {},
              child: Text('Filter'),
            ),
          ],
        ),
      ),
    ]);
  }
}
