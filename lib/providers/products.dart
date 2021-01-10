import 'package:flutter/material.dart';

import './product.dart';

class Products with ChangeNotifier {

  List<Product> _items =[
    Product(
        id: 'p1',
        title: 'Red Shirt',
        description: 'A red shirt -it is pretty',
        price: 29.99,
        imageUrl:
            'https://cdn.pixabay.com/photo/2019/09/19/05/45/cap-4488286_960_720.jpg'),
    Product(
        id: 'p2',
        title: 'Gary Shirt',
        description: 'A gray shirt -it is pretty',
        price: 19.99,
        imageUrl:
            'https://cdn.pixabay.com/photo/2020/05/17/20/26/tee-5183448_960_720.jpg'),
            Product(
        id: 'p3',
        title: 'Gary Shirt',
        description: 'A gray shirt -it is pretty',
        price: 34.99,
        imageUrl:
            'https://cdn.pixabay.com/photo/2020/05/17/20/26/tee-5183448_960_720.jpg'),
            Product(
        id: 'p4',
        title: 'Gary Shirt',
        description: 'A gray shirt -it is pretty',
        price: 31.99,
        imageUrl:
            'https://cdn.pixabay.com/photo/2020/05/17/20/26/tee-5183448_960_720.jpg'),
  ];

  List<Product> get items {
    return [..._items];
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }  

  void addProduct() {
    //_items.add(value);
    notifyListeners();
  }

}