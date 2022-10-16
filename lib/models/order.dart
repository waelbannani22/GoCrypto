import 'package:cryptocurrency_app/models/product.dart';
import 'package:cryptocurrency_app/models/user/user.dart';
import 'package:cryptocurrency_app/models/userm.dart';

import 'adress.dart';

class Order {
  final String id;
  final Userm sender;
  final Product product;
  final double shippingCost;
  final Address sendingFrom;
  final Address sendingTo;

  Order({
    required this.id,
    required this.sender,
    required this.product,
    required this.shippingCost,
    required this.sendingFrom,
    required this.sendingTo,
  });
}
