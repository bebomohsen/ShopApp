import 'package:flutter/material.dart';
import 'package:shopappclone/components/category_card.dart';
import 'package:shopappclone/components/header_home_view.dart';
import 'package:shopappclone/components/icon_button_with_background.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<bool> isSelected = [false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40, bottom: 10, right: 10, left: 10),
        child: Column(
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

            /// slider card
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categoryList.length,
                itemBuilder: (context, index) {
                  return FittedBox(
                      child: CategoryCard(
                    name: categoryList[index]['name']!,
                    url: categoryList[index]['url']!,
                    onTap: () {
                      print('hi ${categoryList.length}');
                      setState(() {
                        isSelected = [false, false, false, false, false];
                        isSelected[index] = true;
                      });
                    },
                    isSelcted: isSelected[index],
                  ));
                },
              ),
            ),

            /// items grid
            SizedBox(
              width: 150,
              height: 200,
              child: Card(
                color: Colors.white,
                elevation: 7,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FittedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Icon(
                            Icons.favorite_border,
                          ),
                        ),
                        FittedBox(
                          child: Center(
                            child: Image.network(
                                'https://cdn-icons-png.flaticon.com/128/4264/4264598.png',width: 150,height: 150,),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Lemon',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Text(
                                'orignal italy',
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
