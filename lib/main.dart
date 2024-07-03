import 'package:basic_shopping_app/config/router/app_route.dart';
import 'package:basic_shopping_app/model/product_model.dart';
import 'package:basic_shopping_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

List<ProductModel> cart = [];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.onGeneratedRoute,
      title: 'Shopping App',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const HomeScreeen(),
    );
  }
}
