import 'package:shopappclone/enums/category_enum.dart';

class ItemModel {
  int discount;
  double price;
  String name, description, url;
  bool isFavorite;

  ItemModel(
      {this.discount = 0,
      required this.url,
      required this.price,
      required this.name,
      required this.description,
      this.isFavorite = false});
}

List<ItemModel> vegetablesItems = [
  ItemModel(
    price: 3,
    name: 'Lemon',
    description: 'Original Nature',
    url: 'https://cdn-icons-png.flaticon.com/128/4264/4264598.png',
    discount: 0,
  ),
  ItemModel(
    price: 3,
    name: 'Cabbage',
    description: 'Original Nature',
    url: 'https://cdn-icons-png.flaticon.com/128/765/765544.png',
    discount: 10,
  ),
  ItemModel(
    isFavorite: true,
    price: 3,
    name: 'Carrot',
    description: 'Original Nature',
    url: 'https://cdn-icons-png.flaticon.com/128/4056/4056887.png',
    discount: 7,
  ),
  ItemModel(
    price: 3,
    name: 'Tomato',
    description: 'Original Nature',
    url: 'https://cdn-icons-png.flaticon.com/128/1412/1412511.png',
    discount: 0,
  ),
  ItemModel(
    isFavorite: true,
    price: 3,
    name: 'Eggplant',
    description: 'Original Nature',
    url: 'https://cdn-icons-png.flaticon.com/128/2909/2909877.png',
    discount: 17,
  ),
];
List<ItemModel> fruitItems = [
  ItemModel(
    price: 4,
    name: 'Banana',
    description: 'Original Nature',
    url: 'https://cdn-icons-png.flaticon.com/128/7627/7627598.png',
    discount: 34,
  ),
  ItemModel(
    price: 2.5,
    name: 'Orange',
    description: 'Original Nature',
    url: 'https://cdn-icons-png.flaticon.com/128/135/135620.png',
    discount: 9,
  ),
  ItemModel(
    price: 5,
    name: 'Mango',
    description: 'Original Nature',
    url: 'https://cdn-icons-png.flaticon.com/128/2909/2909899.png',
    discount: 0,
  ),
  ItemModel(
    isFavorite: true,
    price: 3,
    name: 'Apple',
    description: 'Original Nature',
    url: 'https://cdn-icons-png.flaticon.com/128/2909/2909877.png',
    discount: 17,
  ),
];
Map<CategoryEnum, List<ItemModel>> items = {
  CategoryEnum.vegetables: vegetablesItems,
  CategoryEnum.fruits: fruitItems
};
