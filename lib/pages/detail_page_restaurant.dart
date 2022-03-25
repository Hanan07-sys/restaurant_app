import 'package:flutter/material.dart';
import 'package:restaurant_app/model/data_restaurant.dart';
import 'package:restaurant_app/style/style.dart';
import 'package:restaurant_app/widget/drinkcard.dart';
import 'package:restaurant_app/widget/foodcard.dart';

class RestaurantDetailPage extends StatelessWidget {
  static const routName = '/restaurant_detail';
  final Restaurant restaurant;
  const RestaurantDetailPage({required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, isScrolled) {
          return [
            SliverAppBar(
              iconTheme: IconThemeData(color: Colors.black),
              pinned: true,
              expandedHeight: 250,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  restaurant.pictureId,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        buildName(context),
                        const SizedBox(
                          width: 5,
                        ),
                        buildRating(),
                        const Icon(
                          Icons.star,
                          color: Colors.amberAccent,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    buildCity(context),
                    buildDescription(context),
                  ],
                ),
              ),
              cardFood(context),
              const SizedBox(
                height: 10,
              ),
              FoodCard(restaurant: restaurant),
              cardDrinks(context),
              const SizedBox(
                height: 10,
              ),
              DrinkCard(
                restaurant: restaurant,
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }

  Row buildCity(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.location_on_sharp,
          color: Colors.red.withOpacity(0.8),
        ),
        Text(
          restaurant.city,
          style: Theme.of(context).textTheme.headline6,
        ),
      ],
    );
  }

  Text buildRating() => Text(restaurant.rating.toString());

  Text buildName(BuildContext context) {
    return Text(
      restaurant.name,
      style: Theme.of(context).textTheme.headline6,
    );
  }

  Column buildDescription(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Text('Description', style: Theme.of(context).textTheme.bodyText1),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          restaurant.description,
          style: Theme.of(context).textTheme.bodyText2,
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }

  Card cardFood(BuildContext context) {
    return Card(
      color: secondaryColor,
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'FOOD',
              style: Theme.of(context).textTheme.caption,
            )
          ],
        ),
      ),
    );
  }

  Card cardDrinks(BuildContext context) {
    return Card(
      color: secondaryColor,
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Drinks', style: Theme.of(context).textTheme.caption)
          ],
        ),
      ),
    );
  }
}
