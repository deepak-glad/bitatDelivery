import 'package:bitetat_delivery/helper/filter.dart';
import 'package:bitetat_delivery/helper/gridview.dart';
import 'package:bitetat_delivery/helper/imageSlider.dart';
import 'package:flutter/material.dart';

class FrontDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        ImageSlider(),
        SizedBox(height: 10),
        Text(
          'Search Services',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
        ),
        FilterDetail(),
        Text(
          'Featured Services',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
        ),
        GridViewDetail(),
        Text(
          'Why Choose Us?',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'We have udertaken 10 plus years of glorious self Satisfied Services',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.normal),
          ),
        ),
      ],
    ));
  }
}
