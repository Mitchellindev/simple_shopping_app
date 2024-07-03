import 'package:basic_shopping_app/main.dart';
import 'package:basic_shopping_app/model/product_model.dart';
import 'package:basic_shopping_app/widgets/item_card_widget.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({
    super.key,
    required this.products,
  });
  final List<ProductModel> products;

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(225, 212, 203, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15, top: 15),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 5,
            ),
            itemCount: widget.products.length,
            itemBuilder: (BuildContext context, int index) {
              final product = widget.products[index];
              return ItemCard(
                image: product.image,
                label: product.label,
                price: Text(
                  "\$${product.price}",
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(161, 161, 161, 1),
                  ),
                ),
                onTap: () {
                  setState(() {
                    cart.add(product);
                  });
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
