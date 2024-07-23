// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:simple_sneakers_ecommerce/components/bottom_nav_bar.dart';
import 'package:simple_sneakers_ecommerce/pages/cart_page.dart';
import 'package:simple_sneakers_ecommerce/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // index of current tab
  int _selectedIndexTab = 0;

  // method to change selected tab
  void navigateBottomBar(int index){
    setState(() {
      _selectedIndexTab = index;
    });
  }

  // list of pages
  List<Widget> pages = [
    // shop page
    const ShopPage(),

    // cart page
    const CartPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: pages[_selectedIndexTab],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Icon(Icons.menu),
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const SizedBox(height: 50,),

            // logo
            SizedBox(
              height: 160,
              child: DrawerHeader(
                padding: EdgeInsets.all(30),
                child: Image.asset('lib/images/nike_logo.png', 
                  color: Colors.white)
                    
              ),
            ),

            // other pages
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: ListTile(
                leading: Icon(Icons.home, color: Colors.white,),
                title: Text("Home", 
                  style: TextStyle(color: Colors.white),  
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: ListTile(
                leading: Icon(Icons.info, color: Colors.white,),
                title: Text("About", 
                  style: TextStyle(color: Colors.white),  
                ),
              ),
            ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(left: 25, bottom: 25),
              child: ListTile(
                leading: Icon(Icons.logout, color: Colors.white,),
                title: Text("Logout", 
                  style: TextStyle(color: Colors.white),  
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}