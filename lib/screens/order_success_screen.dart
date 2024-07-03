import 'package:flutter/material.dart';

class OrderSuccessfulScreen extends StatelessWidget {
  const OrderSuccessfulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(225, 212, 203, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(225, 212, 203, 1),
        title: const Text('Order Successful'),
        elevation: 1,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 80,
            ),
            const Text(
              'Your order has been placed successfully!',
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text(
                'Back to Products',
                style: TextStyle(
                  color: Color.fromRGBO(77, 50, 32, 1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
