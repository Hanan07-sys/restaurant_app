import 'dart:convert';

class Restaurant {
  late String id;
  late String name;
  late String description;
  late String pictureId;
  late String city;
  late double rating;
  late List foods;
  late List drinks;

  Restaurant(
      {required this.id,
      required this.name,
      required this.description,
      required this.pictureId,
      required this.city,
      required this.rating
      });

  Restaurant.fromJSON(Map<String, dynamic> restaurant){
    id = restaurant['id'];
    name = restaurant['name'];
    description = restaurant['description'];
    pictureId = restaurant['pictureId'];
    city = restaurant['city'];
    rating = validDouble(restaurant['rating']);
    foods = restaurant['menus']['foods'];
    drinks = restaurant['menus'] ['drinks'];
  }
}

double validDouble(dynamic value){
  if (value is int){
    return value.toDouble();
  }
  else{
    return value;
  }
}

List<Restaurant> parseArticles(String? json){
  if (json == null){
    return [];
  }

  final Map<String, dynamic> parsedMap = jsonDecode(json);
  final List parsed = parsedMap['restaurants'];
  return parsed.map((json) => Restaurant.fromJSON(json)).toList();
}