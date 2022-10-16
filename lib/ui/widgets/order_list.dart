import 'package:cryptocurrency_app/models/news.dart';
import 'package:flutter/material.dart';

import '../../models/order.dart';
import 'order_entry.dart';

class OrderList extends StatelessWidget {
  final List<News> news;

  const OrderList({
    Key? key,
    required this.news,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 5.0,
          ),
          ...(news.map((News news) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
              child: OrderEntry(news: news),
            );
          }).toList()),
          const SizedBox(
            height: 5.0,
          ),
        ],
      ),
    );
  }
}
