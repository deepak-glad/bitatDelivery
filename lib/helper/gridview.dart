import 'package:bitetat_delivery/model/model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GridViewDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = Provider.of<DetailProvider>(context);
    return Container(
      // padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(10),
      child: GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: .6,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            crossAxisCount: 2,
          ),
          itemCount: data.model.length,
          itemBuilder: (context, index) {
            return Container(
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 1.0,
                      spreadRadius: .5,
                      color: Colors.grey,
                    )
                  ]),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    child: Image.network(
                      data.model[index].image,
                      fit: BoxFit.fitHeight,
                      height: 180,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      data.model[index].price,
                      style: TextStyle(color: Color.fromRGBO(252, 186, 3, 1)),
                    ),
                  ),
                  Text('Company:${data.model[index].name}'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star, color: Colors.grey),
                      Icon(Icons.star, color: Colors.grey),
                      Icon(Icons.star, color: Colors.grey),
                      Icon(Icons.star, color: Colors.grey),
                    ],
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text('SELECT OPTIONS'),
                    color: Color.fromRGBO(255, 200, 0, 1),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
