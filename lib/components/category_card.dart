import 'package:flutter/material.dart';
import 'package:shopappclone/enums/category_enum.dart';

class CategoryCard extends StatefulWidget {
  CategoryCard(
      {required this.isSelcted,
      Key? key,
      required this.onTap,
      required this.url,
      required this.name})
      : super(key: key);
  bool isSelcted;
  final GestureTapCallback? onTap;
  final String url;
  final CategoryEnum name;

  Color color = Colors.white;

  @override
  _CategoryCardState createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: widget.onTap,
          child: Container(
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: widget.isSelcted ? Colors.green : widget.color,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey)),
            width: 100,
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Image.network(
                widget.url,
                color: widget.isSelcted ? Colors.white : Colors.grey,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(widget.name.name),
      ],
    );
  }
}
