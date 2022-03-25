import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app/pages/detail_page_restaurant.dart';
import 'package:restaurant_app/model/data_restaurant.dart';
import 'package:restaurant_app/style/style.dart';

class ListRestaurant extends StatelessWidget {
  static const routeName = '/restaurant_list';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, isScrolled) {
          return [
            SliverAppBar(
              expandedHeight: 300,
              pinned: true,
              backgroundColor: Colors.white,
              title: Text(
                'Restaurant',
                style: Theme.of(context).textTheme.headline5,
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'assets/cook.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ];
        },
        body: FutureBuilder<String>(
            future: DefaultAssetBundle.of(context)
                .loadString('assets/local_restaurant.json'),
            builder: (context, snapshot) {
              final List<Restaurant> restaurant =
                  parseArticles(snapshot.data);
              return ListView.builder(
                itemCount: restaurant.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      _buildRestaurantItem(context, restaurant[index]),
                      Divider(
                        color: dividerColor,
                      ),
                    ],
                  );
                },
              );
            }),
      ),
    );
  }

  Widget _buildRestaurantItem(BuildContext context, Restaurant restaurant) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
      tileColor: listColor,
      leading: Image.network(
        restaurant.pictureId,
        width: 100,
        height: 90,
        fit: BoxFit.cover,
      ),
      trailing: const Icon(Icons.navigate_next),
      title: Text(
        restaurant.name,
        style: Theme.of(context).textTheme.headline6,
      ),
      subtitle: Column(
        children: [
          Row(
            children: [
              Text(
                restaurant.city,
                style: Theme.of(context).textTheme.subtitle1,
              )
            ],
          ),
          const SizedBox(
            height: 3,
          ),
          Row(
            children: [
              Text(
              restaurant.rating.toString(),
                style: Theme.of(context).textTheme.subtitle2,
              ),
              const Icon(
                Icons.star,
                color: Colors.amber,
                size: 16,
              )
            ],
          ),
        ],
      ),
      onTap: (){
        Navigator.pushNamed(context, RestaurantDetailPage.routName, arguments: restaurant);
      },
    );
  }
}
