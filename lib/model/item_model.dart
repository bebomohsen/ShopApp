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
    price: 5.5,
    name: 'Apple',
    description: 'Original Nature',
    url: 'https://cdn-icons-png.flaticon.com/128/415/415733.png',
    discount: 17,
  ),
];
List<ItemModel> bakeryItems = [
  ItemModel(
    price: 1,
    name: 'Bread',
    description: 'New Arrival',
    url: 'https://cdn-icons-png.flaticon.com/128/4241/4241664.png',
    discount: 0,
  ),
  ItemModel(
    price: 2.5,
    name: 'Toast',
    description: 'New Arrival',
    url: 'https://cdn-icons-png.flaticon.com/128/3348/3348093.png',
    discount: 0,
  ),
];
List<ItemModel> milkItems = [
  ItemModel(
    price: 17,
    name: 'Milk',
    description: 'small bottle 400g',
    url: 'https://cdn-icons-png.flaticon.com/128/684/684631.png',
    discount: 3,
  ),
  ItemModel(
    price: 30,
    name: 'Milk',
    description: 'Large Packet of 1L',
    url: 'https://cdn-icons-png.flaticon.com/128/3982/3982755.png',
    discount: 0,
  ),
];
Map<CategoryEnum, List<ItemModel>> items = {
  CategoryEnum.vegetables: vegetablesItems,
  CategoryEnum.fruits: fruitItems,
  CategoryEnum.bakery: bakeryItems,
  CategoryEnum.milk: milkItems,
};
