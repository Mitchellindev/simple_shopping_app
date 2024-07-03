import 'package:basic_shopping_app/config/router/route.dart';
import 'package:basic_shopping_app/screens/order_success_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route onGeneratedRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.orderSuccess:
        return MaterialPageRoute(
          builder: (_) => const OrderSuccessfulScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => const Text("Hi"),
        );
    }
  }
}
