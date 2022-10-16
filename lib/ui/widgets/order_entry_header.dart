import 'package:cryptocurrency_app/models/news.dart';
import 'package:flutter/material.dart';

import '../../models/order.dart';

class OrderEntryHeader extends StatelessWidget {
  final double height;
  final News news;

  const OrderEntryHeader({
    Key? key,
    required this.news,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: Stack(
        children: [
          Container(
            height: height,
            child: Image.network(
              news.image,
              fit: BoxFit.fill,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ListItemDetailsHeaderBar(
                news: news,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ListItemDetailsHeaderBar extends StatelessWidget {
  final News news;

  const ListItemDetailsHeaderBar({Key? key, required this.news})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 10, 115, 111),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Material(
            color: Color.fromARGB(255, 10, 115, 111),
            child: InkWell(
              splashColor: Color.fromARGB(255, 10, 115, 111),
              onTap: () {
                // TODO: Add Functionality
              },
              child: const Padding(
                padding: EdgeInsets.all(5.0),
                child: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              news.title.substring(0, 27) + '...',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
