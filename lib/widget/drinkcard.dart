import 'package:flutter/material.dart';
import 'package:restaurant_app/model/data_restaurant.dart';

class DrinkCard extends StatelessWidget {
  Restaurant restaurant;

  DrinkCard({required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 150,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  width: 150,
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Image.asset(
                          'assets/drinksrest.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(restaurant.drinks[index]['name'],
                          style: Theme.of(context).textTheme.bodyText2),
                      const Text('Rp. 20.000')
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                    width: 10,
                  ),
              itemCount: restaurant.drinks.length),
        ),
      ],
    );
  }
}
