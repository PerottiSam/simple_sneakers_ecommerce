// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:simple_sneakers_ecommerce/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100], 
        borderRadius: BorderRadius.circular(12)
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // show  pic
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(shoe.imagePath)
          ),

          // description
<<<<<<< HEAD
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(shoe.description, style: TextStyle(color: Colors.grey[600]),),
          ),
=======
          Text(shoe.description, style: TextStyle(color: Colors.grey[600]),),
>>>>>>> 54cc786dc1ce3183555980b70db3e6162ebb9336

          // price + details
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //shoe name
                    Text(shoe.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            
                    const SizedBox(height: 5,),
            
                    //price
                    Text('\$' + shoe.price, style: TextStyle(color: Colors.grey),)
                  ],
                ),
            
                //button
<<<<<<< HEAD
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.black, 
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(12), bottomRight: Radius.circular(12))
                      ),
                    child: Icon(Icons.add, color: Colors.white,)
                  ),
=======
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.black, 
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(12), bottomRight: Radius.circular(12))
                    ),
                  child: Icon(Icons.add, color: Colors.white,)
>>>>>>> 54cc786dc1ce3183555980b70db3e6162ebb9336
                )
              ],
            ),
          )

          //button to add to cart
        ],
      ),
    );
  }
}