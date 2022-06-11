import 'package:shopappclone/enums/category_enum.dart';

class CategoryModel {
  final CategoryEnum name;
  final String url;

  CategoryModel(this.name, this.url);
}

List<CategoryModel> categoryList = [
  CategoryModel(CategoryEnum.bakery,
      'https://cdn-icons-png.flaticon.com/512/3014/3014466.png'),
  CategoryModel(CategoryEnum.fruits,
      'https://cdn-icons-png.flaticon.com/128/3081/3081887.png'),
  CategoryModel(CategoryEnum.vegetables,
      'https://cdn-icons-png.flaticon.com/128/2329/2329903.png'),
  CategoryModel(CategoryEnum.milk,
      'https://cdn-icons-png.flaticon.com/128/3500/3500274.png'),
];
