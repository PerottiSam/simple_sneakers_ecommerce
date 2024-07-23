// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_sneakers_ecommerce/components/cart_item.dart';
import 'package:simple_sneakers_ecommerce/models/cart.dart';
import 'package:simple_sneakers_ecommerce/models/shoe.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //heading
          Text('My Cart', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),

          SizedBox(height: 10,),

          Expanded(child: 
            ListView.builder(
              itemCount: value.getCart().length,
              itemBuilder: (context, index) {
                // get individual shoe
                Shoe individualShoe = value.getCart()[index];


                // return the cart item
                return CartItem(shoe: individualShoe,);

              }
            ,)
          ,)
        ],
      ),
    ),);
  }
}