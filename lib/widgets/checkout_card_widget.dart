import 'package:flutter/material.dart';

class CheckoutCard extends StatelessWidget {
  const CheckoutCard({
    super.key,
    required this.label,
    required this.image,
    required this.onTap,
    required this.price,
  });

  final String label;
  final String price;
  final String image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          color: const Color.fromRGBO(241, 241, 241, 1),
          borderRadius: BorderRadius.circular(5)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Row(
                  children: [
                    Flexible(
                      child: Image.asset(
                        image,
                        width: 30,
                        height: 30,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Flexible(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          label,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          price,
                          style: const TextStyle(
                            color: Color.fromRGBO(161, 161, 161, 1),
                          ),
                        ),
                      ],
                    )),
                  ],
                ),
              ),
              GestureDetector(
                onTap: onTap,
                child: const Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
