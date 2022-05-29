import 'package:flutter/material.dart';
import 'package:shopappclone/components/icon_button_with_background.dart';

class HeaderHomeView extends StatelessWidget {
  const HeaderHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.menu,
            size: 30,
          color: Colors.black54,),
          Text(
            'EDEKA',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 30, color: Colors.blue),
          ),
          SizedBox(height: 35,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                IconButtonWithBackground(
                  color: Colors.blue,
                  size: 20,
                  icon: Icons.send,
                ),
                SizedBox(width: 10),
                IconButtonWithBackground(
                  color: Colors.red,
                  size: 20,
                  icon: Icons.favorite_border,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
