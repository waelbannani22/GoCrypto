import 'dart:async';
import 'package:cryptocurrency_app/models/exchanges.dart';
import 'package:cryptocurrency_app/repository/authentification.dart';
import 'package:cryptocurrency_app/ui/widgets/responsive.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../models/quote.dart';
import '../../repository/cryptorep.dart';

class Exchangewidget extends StatefulWidget {
  @override
  _TopQuoteWidgetState createState() => _TopQuoteWidgetState();
}

class _TopQuoteWidgetState extends State<Exchangewidget> {
  List<Exchanges> _topQuoteList = [];
  late Timer timer;

  @override
  void initState() {
    fetchTopQuoteList();
    super.initState();

    // Refresh data every 5 secs
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  void fetchTopQuoteList() async {
    List<Exchanges> quotes = await Authentification().exchangesData();
    setState(() {
      _topQuoteList = quotes;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    return Container(
      child: Responsive.isSmallScreen(context)
          ? Column(
              children: _topQuoteList
                  .map((quote) => new Container(
                        child: topQuoteCard(quote),
                      ))
                  .toList(),
            )
          : Row(
              children: _topQuoteList
                  .map((quote) => new Expanded(
                        flex: 2,
                        child: topQuoteCard(quote),
                      ))
                  .toList(),
            ),
    );
  }

  Widget topQuoteCard(Exchanges quote) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 0,
              blurRadius: 2,
              offset: Offset(0, 1),
            ),
          ]),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(children: [
                  Container(
                    width: 60,
                    height: 60,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        quote.image!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Flexible(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(quote.name!,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500)),
                          SizedBox(
                            height: 5,
                          ),
                          Text(quote.country!,
                              style: TextStyle(color: Colors.grey[500])),
                        ]),
                  )
                ]),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color.fromARGB(255, 92, 236, 224)),
                      child: Text(
                        "rank",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.blue),
                      child: Text(
                        quote.rank!.toString(),
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    )
                  ],
                ),
                Text(
                  quote.year_established!.toString(),
                  style: TextStyle(color: Colors.grey.shade800, fontSize: 12),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
