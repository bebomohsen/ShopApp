import 'package:flutter/material.dart';
import 'package:shopappclone/model/item_model.dart';

class ItemCard extends StatefulWidget {
  ItemCard(
      {required this.item,
      Key? key,
      required this.plusOnTap,
      required this.favOnTab})
      : super(key: key);
  ItemModel item;
  final GestureTapCallback? plusOnTap, favOnTab;

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: Colors.white,
          elevation: 7,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: GestureDetector(
                    onTap: widget.favOnTab,
                    child: Icon(
                      color: widget.item.isFavorite ? Colors.red : Colors.grey,
                      widget.item.isFavorite
                          ? Icons.favorite
                          : Icons.favorite_border,
                    ),
                  ),
                ),
              ),
              Center(
                child: Image.network(
                  widget.item.url,
                  height: 85,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.item.name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text(
                        widget.item.description,
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '\$${(widget.item.discount > 0 ? widget.item.price-(widget.item.discount / 100 * widget.item.price) : widget.item.price).toStringAsFixed(2)}',
                    style: TextStyle(color: Colors.green, fontSize: 18),
                  ),
                  widget.item.discount > 0
                      ? Text(
                          '\$${widget.item.price}',
                          style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              fontSize: 17),
                        )
                      : Container(),
                  GestureDetector(
                    onTap: widget.plusOnTap,
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                      child: Center(
                        child: Text(
                          '+',
                          style: TextStyle(color: Colors.white, fontSize: 23),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        widget.item.discount > 0
            ? Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Text(
                  '${widget.item.discount}% off',
                  style: TextStyle(color: Colors.white),
                ),
              )
            : Container()
      ],
    );
  }
}
