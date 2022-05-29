import 'package:flutter/material.dart';
import 'package:shopappclone/components/header_home_view.dart';
import 'package:shopappclone/components/icon_button_with_background.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40, bottom: 10, right: 10, left: 10),
        child: Column(
          children: [
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
          ],
        ),
      ),
    );
  }
}