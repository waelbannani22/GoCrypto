import 'dart:async';
import 'package:cryptocurrency_app/repository/authentification.dart';
import 'package:cryptocurrency_app/ui/widgets/responsive.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../models/quote.dart';
import '../../repository/cryptorep.dart';

class TopQuoteWidget extends StatefulWidget {
  @override
  _TopQuoteWidgetState createState() => _TopQuoteWidgetState();
}

class _TopQuoteWidgetState extends State<TopQuoteWidget> {
  List<Quote> _topQuoteList = [];
  late Timer timer;

  @override
  void initState() {
    fetchTopQuoteList();
    super.initState();

    // Refresh data every 5 secs
    timer = Timer.periodic(Duration(seconds: 10), (timer) {
      fetchTopQuoteList();
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  void fetchTopQuoteList() async {
    List<Quote> quotes = await Authentification().classments();
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

  Widget topQuoteCard(Quote quote) {
    return Card(
      elevation: 5,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Center(
                        child: CircleAvatar(
                          backgroundImage:
                              NetworkImage('${quote.coinImageUrl}'),
                          radius: 14,
                        ),
                      ),
                      SizedBox(width: 15),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Responsive.isMediumScreen(context)
                                  ? '${quote.symbol}'
                                  : '${quote.shortName}',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(fontSize: 16),
                            ),
                            Text(
                              '${quote.regularMarketTime!.fmt}',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            '${quote.regularMarketPrice!.fmt}',
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 5),
                          Text('${quote.currency}'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          if (Responsive.isLargeScreen(context))
                            Text('Change: '),
                          Text(
                            '${quote.regularMarketChange!.fmt}',
                            style: TextStyle(
                              color: Colors.green,
                            ),
                          ),
                          Text(
                            '${quote.regularMarketChangePercent!.fmt}',
                            style: TextStyle(
                              color: Colors.green,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
