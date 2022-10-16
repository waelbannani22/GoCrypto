import 'dart:math';

import 'package:cryptocurrency_app/constants/keys.dart';
import 'package:cryptocurrency_app/drawer/custom_drawer.dart';
import 'package:cryptocurrency_app/models/news.dart';
import 'package:cryptocurrency_app/provider/crypto_provider.dart';
import 'package:cryptocurrency_app/repository/authentification.dart';
import 'package:cryptocurrency_app/ui/widgets/order_list.dart';
import 'package:cryptocurrency_app/ui/widgets/pair_tile.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../generated/locale_keys.g.dart';
import '../../models/adress.dart';
import '../../models/order.dart';
import '../../models/product.dart';
import '../../models/userm.dart';

class NewsScreen extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Future<List<News>> listnews = Authentification().newsresponse();
    final ordersList = [
      Order(
        id: '#${Random().nextInt(9999999)}',
        sender: Userm(
          firstname: 'John',
          lastname: 'Doe',
          evaluation: 3,
        ),
        product: Product(
          price: 59.99,
          image:
              'https://unsplash.com/photos/yjAFnkLtKY0/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MzB8fHByb2R1Y3R8ZW58MHx8fHwxNjU1NjcyNDkw&force=true&w=640',
          weight: 72,
        ),
        shippingCost: 30.0,
        sendingFrom: Address(
          street: 'Smoky Hollow Rd',
          number: 761,
          city: 'Brooklyn',
          state: 'NY',
          zipCode: 11210,
        ),
        sendingTo: Address(
          street: 'Bohemia Ave',
          number: 46,
          city: 'Brooklyn',
          state: 'NY',
          zipCode: 11237,
        ),
      ),
      //
      Order(
        id: '#${Random().nextInt(9999999)}',
        sender: Userm(
          firstname: 'John',
          lastname: 'Doe',
          evaluation: 3,
        ),
        product: Product(
          price: 59.99,
          image:
              'https://unsplash.com/photos/yjAFnkLtKY0/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MzB8fHByb2R1Y3R8ZW58MHx8fHwxNjU1NjcyNDkw&force=true&w=640',
          weight: 72,
        ),
        shippingCost: 30.0,
        sendingFrom: Address(
          street: 'Smoky Hollow Rd',
          number: 761,
          city: 'Brooklyn',
          state: 'NY',
          zipCode: 11210,
        ),
        sendingTo: Address(
          street: 'Bohemia Ave',
          number: 46,
          city: 'Brooklyn',
          state: 'NY',
          zipCode: 11237,
        ),
      ),
      //
      Order(
        id: '#${Random().nextInt(9999999)}',
        sender: Userm(
          firstname: 'John',
          lastname: 'Doe',
          evaluation: 3,
        ),
        product: Product(
          price: 59.99,
          image:
              'https://unsplash.com/photos/yjAFnkLtKY0/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MzB8fHByb2R1Y3R8ZW58MHx8fHwxNjU1NjcyNDkw&force=true&w=640',
          weight: 72,
        ),
        shippingCost: 30.0,
        sendingFrom: Address(
          street: 'Smoky Hollow Rd',
          number: 761,
          city: 'Brooklyn',
          state: 'NY',
          zipCode: 11210,
        ),
        sendingTo: Address(
          street: 'Bohemia Ave',
          number: 46,
          city: 'Brooklyn',
          state: 'NY',
          zipCode: 11237,
        ),
      ),
      Order(
        id: '#${Random().nextInt(9999999)}',
        sender: Userm(
          firstname: 'John',
          lastname: 'Doe',
          evaluation: 3,
        ),
        product: Product(
          price: 59.99,
          image:
              'https://unsplash.com/photos/yjAFnkLtKY0/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MzB8fHByb2R1Y3R8ZW58MHx8fHwxNjU1NjcyNDkw&force=true&w=640',
          weight: 72,
        ),
        shippingCost: 30.0,
        sendingFrom: Address(
          street: 'Smoky Hollow Rd',
          number: 761,
          city: 'Brooklyn',
          state: 'NY',
          zipCode: 11210,
        ),
        sendingTo: Address(
          street: 'Bohemia Ave',
          number: 46,
          city: 'Brooklyn',
          state: 'NY',
          zipCode: 11237,
        ),
      ),
      Order(
        id: '#${Random().nextInt(9999999)}',
        sender: Userm(
          firstname: 'John',
          lastname: 'Doe',
          evaluation: 3,
        ),
        product: Product(
          price: 59.99,
          image:
              'https://unsplash.com/photos/yjAFnkLtKY0/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MzB8fHByb2R1Y3R8ZW58MHx8fHwxNjU1NjcyNDkw&force=true&w=640',
          weight: 72,
        ),
        shippingCost: 30.0,
        sendingFrom: Address(
          street: 'Smoky Hollow Rd',
          number: 761,
          city: 'Brooklyn',
          state: 'NY',
          zipCode: 11210,
        ),
        sendingTo: Address(
          street: 'Bohemia Ave',
          number: 46,
          city: 'Brooklyn',
          state: 'NY',
          zipCode: 11237,
        ),
      ),
      Order(
        id: '#${Random().nextInt(9999999)}',
        sender: Userm(
          firstname: 'John',
          lastname: 'Doe',
          evaluation: 3,
        ),
        product: Product(
          price: 59.99,
          image:
              'https://unsplash.com/photos/yjAFnkLtKY0/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MzB8fHByb2R1Y3R8ZW58MHx8fHwxNjU1NjcyNDkw&force=true&w=640',
          weight: 72,
        ),
        shippingCost: 30.0,
        sendingFrom: Address(
          street: 'Smoky Hollow Rd',
          number: 761,
          city: 'Brooklyn',
          state: 'NY',
          zipCode: 11210,
        ),
        sendingTo: Address(
          street: 'Bohemia Ave',
          number: 46,
          city: 'Brooklyn',
          state: 'NY',
          zipCode: 11237,
        ),
      ),
      Order(
        id: '#${Random().nextInt(9999999)}',
        sender: Userm(
          firstname: 'John',
          lastname: 'Doe',
          evaluation: 3,
        ),
        product: Product(
          price: 59.99,
          image:
              'https://unsplash.com/photos/yjAFnkLtKY0/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MzB8fHByb2R1Y3R8ZW58MHx8fHwxNjU1NjcyNDkw&force=true&w=640',
          weight: 72,
        ),
        shippingCost: 30.0,
        sendingFrom: Address(
          street: 'Smoky Hollow Rd',
          number: 761,
          city: 'Brooklyn',
          state: 'NY',
          zipCode: 11210,
        ),
        sendingTo: Address(
          street: 'Bohemia Ave',
          number: 46,
          city: 'Brooklyn',
          state: 'NY',
          zipCode: 11237,
        ),
      ),
    ];
    return FutureBuilder<List<News>>(
        future: Authentification().newsresponse(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Container(
              //key: Keys.SEARCH_SCREEN,
              child: new SingleChildScrollView(
                child: Column(
                  children: [
                    AppBar(
                      title: Text("News"),
                    ),
                    OrderList(news: snapshot.data!)
                  ],
                ),
              ),
            );
          } else {
            return Container(
              child: CircularProgressIndicator(
                strokeWidth: 1.0,
                backgroundColor: Colors.greenAccent,
              ),
            );
          }
        });
  }
}
