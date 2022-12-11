import 'package:flutter/material.dart';

import '../../../models/product.dart';

class Cart {
  final Product? product;
  final int? numOfItems;

  Cart({this.numOfItems, this.product});
}

List<Cart> demoCarts = [
  Cart(product: demoProducts[0], numOfItems: 2),
  Cart(product: demoProducts[1], numOfItems: 1),
  Cart(product: demoProducts[2], numOfItems: 5),
  Cart(product: demoProducts[3], numOfItems: 2),
];
