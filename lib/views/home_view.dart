import 'package:flutter/material.dart';
import 'package:shopappclone/components/category_card.dart';
import 'package:shopappclone/components/header_home_view.dart';
import 'package:shopappclone/components/icon_button_with_background.dart';
import 'package:shopappclone/components/item_card.dart';
import 'package:shopappclone/enums/category_enum.dart';
import 'package:shopappclone/model/category_model.dart';
import 'package:shopappclone/model/item_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  CategoryEnum categorySelected = CategoryEnum.vegetables;
  int counter = 0;
  double totalPrice = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40, bottom: 10, right: 10, left: 10),
        child: Stack(
          children: [
            Column(
              children: [
                /// header
                HeaderHomeView(),
                SizedBox(
                  height: 20,
                ),

                /// Search bar
                SizedBox(
                  height: 50,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                          child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.search),
                              hintText: 'Search product here'),
                        ),
                      )),
                      SizedBox(
                        width: 20,
                      ),
                      IconButtonWithBackground(
                          icon: Icons.filter_alt_outlined,
                          color: Colors.grey,
                          size: 30)
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                /// slider card
                SizedBox(
                  height: 120,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categoryList.length,
                    itemBuilder: (context, index) {
                      return FittedBox(
                          child: CategoryCard(
                        name: categoryList[index].name,
                        url: categoryList[index].url,
                        onTap: () {
                          print('hi ${categoryList.length}');
                          setState(() {
                            categorySelected = categoryList[index].name;
                          });
                        },
                        isSelcted: categorySelected == categoryList[index].name,
                      ));
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                /// items grid
                Expanded(
                  child: GridView.builder(
                      padding: EdgeInsets.zero,
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent:
                              (MediaQuery.of(context).size.width / 2),
                          childAspectRatio: .6,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10),
                      itemCount: items[categorySelected]!.length,
                      itemBuilder: (BuildContext ctx, index) {
                        return ItemCard(
                          plusOnTap: () {
                            totalPrice += items[categorySelected]![index]
                                        .discount >
                                    0
                                ? items[categorySelected]![index].price -
                                    (items[categorySelected]![index].discount /
                                        100 *
                                        items[categorySelected]![index].price)
                                : items[categorySelected]![index].price;
                            counter++;
                            setState(() {});
                          },
                          item: items[categorySelected]![index],
                          favOnTab: () {
                            items[categorySelected]![index].isFavorite =
                                !items[categorySelected]![index].isFavorite;
                            setState(() {});
                          },
                        );
                      }),
                ),
              ],
            ),
            if (totalPrice > 0)
              Align(
                alignment: Alignment(0, .85),
                child: Card(
                  elevation: 15,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: SizedBox(
                    height: 60,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(
                                  'Total:',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  ' $counter items  \$${totalPrice.toStringAsFixed(2)}',
                                  style: TextStyle(fontSize: 18),
                                )
                              ],
                            ),
                          ),
                        ),
                        ElevatedButton(
                            style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0)),
                            onPressed: () {
                              counter = 0;
                              totalPrice = 0;
                              setState(() {});
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4),
                              child: Row(
                                children: [
                                  Text(
                                    'Cart',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.shopping_cart_outlined,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
