// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_sneakers_ecommerce/components/shoe_tile.dart';
<<<<<<< HEAD
import 'package:simple_sneakers_ecommerce/models/cart.dart';
=======
>>>>>>> 54cc786dc1ce3183555980b70db3e6162ebb9336
import 'package:simple_sneakers_ecommerce/models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  // add shoe to cart
  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe); 

    // alert the user
    showDialog(context: context, builder: (context) => AlertDialog(
      title: Text('Successfully added!'),
      content: Text('Check your cart...'),
    ),);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => 
      Column(
        children: [
          // search bar
          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Search", style: TextStyle(color: Colors.grey),),
                Icon(
                  Icons.search,
                  color: Colors.grey,
                )
              ],
            ),
            
          ),

          // message


          // hot picks
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hot Picks 🔥",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24
                  ),
                ),
            
                Text(
                  "See all",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                  ),
                )
              ],
            ),
          ),

<<<<<<< HEAD
          const SizedBox(height: 30,),

          Expanded(
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,

              itemBuilder: (context, index) {
                // get a shoe from shop list
                Shoe shoe = value.getShoesForSale()[index];

                // return the shoe
                return ShoeTile(shoe: shoe, onTap: () => addShoeToCart(shoe),);
              },
            ),

          ),

          Padding(
            padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
            child: Divider(
              color: Colors.transparent,
            ),
          )
        ],
      ),
=======
        const SizedBox(height: 30,),

        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,

            itemBuilder: (context, index) {
              Shoe shoe = Shoe(name: 'Scarpa 1', 
                    price: '130', 
                    imagePath: 'lib/images/scarpa_1.png', 
                    description: 'cool shoe');
              return ShoeTile(shoe: shoe,);
            },
          ),

        ),

        Padding(
          padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
          child: Divider(
            color: Colors.transparent,
          ),
        )
      ],
>>>>>>> 54cc786dc1ce3183555980b70db3e6162ebb9336
    );
  }
}