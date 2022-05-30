import 'package:flutter/material.dart';

List<Map<String, String>> categoryList = [
  {
    'name': 'Bakery',
    'url': 'https://cdn-icons-png.flaticon.com/512/3014/3014466.png'
  },
  {
    'name': 'Fruits',
    'url': 'https://cdn-icons-png.flaticon.com/128/3081/3081887.png'
  },
  {
    'name': 'Vegetables',
    'url': 'https://cdn-icons-png.flaticon.com/128/2329/2329903.png'
  },
  {
    'name': 'Milk',
    'url': 'https://cdn-icons-png.flaticon.com/128/3500/3500274.png'
  },
];

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
  final String url, name;

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
        Text(widget.name),
      ],
    );
  }
}
