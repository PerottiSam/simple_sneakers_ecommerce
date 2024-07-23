<<<<<<< HEAD
import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier{
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Scarpa 1', 
      price: '110',
      imagePath: 'lib/images/scarpa_1.png',
      description: 'Questa è la scarpa 1'
    ),

    Shoe(
      name: 'Scarpa 2',
      price: '120',
      imagePath: 'lib/images/scarpa_2.png',
      description: 'Questa è la scarpa 2'
    ),

    Shoe(
      name: 'Scarpa 3',
      price: '130',
      imagePath: 'lib/images/scarpa_3.png',
      description: 'Questa è la scarpa 3'
    ),

    Shoe(
      name: 'Scarpa 4',
      price: '140',
      imagePath: 'lib/images/scarpa_4.png',
      description: 'Questa è la scarpa 4'
    ),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoesForSale(){
    return shoeShop;
  }

  // get cart
  List<Shoe> getCart(){
    return userCart;
  }

  // add item to cart
  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
=======
class Cart{
  // list of shoes for sale

  // list of items in user cart
>>>>>>> 54cc786dc1ce3183555980b70db3e6162ebb9336
}