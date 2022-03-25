import 'package:flutter/material.dart';
import 'package:restaurant_app/pages/detail_page_restaurant.dart';
import 'package:restaurant_app/pages/list_page_restaurant.dart';
import 'package:restaurant_app/model/data_restaurant.dart';
import 'package:restaurant_app/style/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurant App',
      theme: ThemeData(
        colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: primaryColor,
              secondary: secondaryColor,

            ),
        textTheme: myTextTheme,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: ListRestaurant.routeName,
      routes: {
        ListRestaurant.routeName: (context) => ListRestaurant(),
        RestaurantDetailPage.routName: (context) => RestaurantDetailPage(
            restaurant:
                ModalRoute.of(context)?.settings.arguments as Restaurant)
      },
    );
  }
}
