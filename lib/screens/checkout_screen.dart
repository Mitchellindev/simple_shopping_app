import 'package:basic_shopping_app/config/router/route.dart';
import 'package:basic_shopping_app/main.dart';
import 'package:basic_shopping_app/model/product_model.dart';
import 'package:basic_shopping_app/widgets/checkout_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({
    super.key,
    required this.cart,
  });
  final List<ProductModel> cart;

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    if (cart.isEmpty) {
      return Container(
        width: double.infinity,
        color: const Color.fromRGBO(225, 212, 203, 1),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your cart is empty.',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Add products to checkout!',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      );
    }
    return Scaffold(
      backgroundColor: const Color.fromRGBO(225, 212, 203, 1),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(241, 241, 241, 1),
        onPressed: () => _placeOrder(context),
        child: const Text('Order'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15, top: 15),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: widget.cart.length,
                  itemBuilder: (context, index) {
                    final product = widget.cart[index];

                    return CheckoutCard(
                      label: product.label,
                      image: product.image,
                      onTap: () {
                        setState(() {
                          widget.cart.remove(product);
                        });
                      },
                      price: '\$${product.price.toString()}',
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _placeOrder(BuildContext context) {
    // Simulate placing order (replace with actual logic)
    Future.delayed(const Duration(seconds: 1), () {
      // Clear cart and navigate to Order Successful Screen
      setState(() {
        cart.clear();
      });
      Navigator.pushNamed(context, Routes.orderSuccess);
    });
  }
}
