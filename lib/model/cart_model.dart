import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // list of item on sale
  final List _shopItems = [
    //[itemName,itemPrice,itemPath,color]
    ["Avocado", "150", 'lib/images/avocado.png', Colors.green],
    ["Banana", "80", 'lib/images/banana.png', Colors.yellow],
    ["Chicken", "350", 'lib/images/chicken.png', Colors.brown],
    ["Water", "50", 'lib/images/water.png', Colors.blue],
  ];

  // list of cart items
  List _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;

  //add item for the cart
  void addItemToCArt(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }
  //calculate the total amount

  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
