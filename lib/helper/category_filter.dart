import 'package:flutter/material.dart';

class CategoryFilter extends StatefulWidget {
  @override
  _CategoryFilterState createState() => _CategoryFilterState();
}

class _CategoryFilterState extends State<CategoryFilter> {
  var _expanded = false;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ListTile(
        title: Text('Category'),
        trailing: Icon(_expanded ? Icons.expand_less : Icons.expand_more),
        onTap: () {
          setState(() {
            _expanded = !_expanded;
          });
        },
      ),
      if (_expanded)
        Container(
          child: Text('test'),
        ),
    ]);
  }
}
