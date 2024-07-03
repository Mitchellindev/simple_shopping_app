import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    required this.image,
    required this.label,
    required this.price,
    required this.onTap,
  });

  final String image;
  final String label;
  final Widget price;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 166,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: const Color.fromRGBO(241, 241, 241, 1),
            borderRadius: BorderRadius.circular(5)),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.add),
              ],
            ),
            Image.asset(
              image,
              width: 100,
              height: 96,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 5),
            Flexible(
              child: Text(
                label,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(77, 50, 32, 1),
                ),
              ),
            ),
            Flexible(child: price),
          ],
        ),
      ),
    );
  }
}
