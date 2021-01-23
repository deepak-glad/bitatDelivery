import 'package:flutter/cupertino.dart';

class Model {
  final String name;
  final String price;
  final String image;

  Model({
    @required this.image,
    @required this.name,
    @required this.price,
  });
}

class DetailProvider with ChangeNotifier {
  List<Model> _model = [
    Model(
      image:
          'https://bitetatdelivery.com/wp-content/uploads/2020/07/IMG__25.png',
      name: 'Sundaresan',
      price: 'AED2000.00',
    ),
    Model(
        image:
            'https://bitetatdelivery.com/wp-content/uploads/2020/04/background_image_1.jpg',
        name: 'TechSome',
        price: 'AED30.00'),
    Model(
        image:
            'https://bitetatdelivery.com/wp-content/uploads/2020/04/background_image_1.jpg',
        name: 'TechSome',
        price: 'AED30.00'),
  ];
  List<Model> get model {
    return [..._model];
  }
}
