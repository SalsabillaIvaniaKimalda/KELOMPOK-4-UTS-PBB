import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class SpesifikMobil extends StatelessWidget {
  final double? price;
  final String name1;
  final String name2;

  SpesifikMobil({
    required this.name1, 
    required this.name2, 
    this.price, 
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: price == null ? 80 : 100,
      width: 100,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.circular(10)),
      child: price == null
          ? Column(
        children: [
          Text(
            name1,
            style: TextStyle(fontSize: 15,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            name2,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,
            ),
          ),
        ],
      )
          : Column(
        children: [
          Text(
            name1,
            style: TextStyle(fontSize: 15,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            price.toString(),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(name2)
        ],
      ),
    );
  }
}