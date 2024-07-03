import 'package:basic_shopping_app/main.dart';
import 'package:basic_shopping_app/model/product_model.dart';
import 'package:basic_shopping_app/screens/checkout_screen.dart';
import 'package:basic_shopping_app/screens/product_screen.dart';
import 'package:flutter/material.dart';

class HomeScreeen extends StatefulWidget {
  const HomeScreeen({super.key});

  @override
  State<HomeScreeen> createState() => _HomeScreeenState();
}

class _HomeScreeenState extends State<HomeScreeen> {
  int _currentIndex = 0;

  final List<ProductModel> products = [
    ProductModel(
      label: 'Jeans',
      image: 'assets/images/Jeans.png',
      price: 100,
    ),
    ProductModel(
      label: 'Hoodie',
      image: 'assets/images/hoodie.png',
      price: 15,
    ),
    ProductModel(
      label: 'T-Shirt',
      image: 'assets/images/T-Shirt.png',
      price: 50,
    ),
    ProductModel(
      label: 'Men Short',
      image: 'assets/images/Men-Shorts.png',
      price: 10,
    ),
    ProductModel(
      label: 'Hoodie',
      image: 'assets/images/hoodie_2.png',
      price: 200,
    ),
    ProductModel(
      label: 'T-Shirt',
      image: 'assets/images/T-Shirt_2.png',
      price: 8,
    ),
    ProductModel(
      label: 'Hoodie',
      image: 'assets/images/hoodie_3.png',
      price: 17,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  // List<Widget> pages = [
  //   ProductScreen(
  //     valueSetter: (ProductModel value) {
  //       setState() {
  //         cart.add(value);
  //       }
  //     },
  //   ),
  //   CheckoutScreen(
  //     cart: cart,
  //   ),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        selectedItemColor: const Color.fromRGBO(77, 50, 32, 1),
        unselectedItemColor: const Color.fromRGBO(161, 161, 161, 1),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
            ),
            label: 'Product',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
            ),
            label: 'Checkout',
          ),
        ],
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          ProductScreen(products: products),
          CheckoutScreen(cart: cart),
        ],
      ),
    );
  }
}
