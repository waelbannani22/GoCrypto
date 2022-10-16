import 'package:cryptocurrency_app/models/news.dart';
import 'package:cryptocurrency_app/ui/widgets/order_entry_summary.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../models/order.dart';
import 'animation_widget.dart';
import 'order_entry_header.dart';
import 'order_entry_selection.dart';

class OrderEntry extends StatefulWidget {
  final News news;

  const OrderEntry({
    Key? key,
    required this.news,
  }) : super(key: key);

  @override
  State<OrderEntry> createState() => _OrderEntryState();
}

class _OrderEntryState extends State<OrderEntry>
    with SingleTickerProviderStateMixin {
  double height = 180;
  late final AnimationController _controller;
  final Duration duration = const Duration(milliseconds: 1000);

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: duration);
    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleAnimation() {
    if (_controller.status == AnimationStatus.completed) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
  }

  Widget _senderSection() {
    return OrderEntrySectionRow(
      height: 75,
      padding:
          const EdgeInsets.only(top: 5.0, bottom: 2.5, left: 10.0, right: 10.0),
      children: [
        OrderEntrySection(
          title: 'Title',
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 380,
                    child: Text(
                      '${widget.news.title} ',
                      overflow: TextOverflow.fade,
                      maxLines: 1,
                      softWrap: false,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _addressSection() {
    return OrderEntrySectionRow(
      height: 170,
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.5),
      children: [
        OrderEntrySection(
          title: 'Description',
          children: [
            Text(
              '${widget.news.description}...',
              maxLines: 5,
              overflow: TextOverflow.fade,
            ),
          ],
        ),
      ],
    );
  }

  Widget _deliverySection() {
    return const OrderEntrySectionRow(
      height: 0,
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.5),
      children: [
        OrderEntrySection(
          title: 'Delivery Date',
          children: [
            Text(
              '6:30 pm',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('July 10, 2022'),
          ],
        ),
        OrderEntrySection(
          title: 'Request Deadline',
          children: [
            Text(
              '24 minutes',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Future<void> _launchInBrowser() async {
    late Uri uri = Uri.parse('https://flutter.dev');
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch url';
    }
  }

  Widget _messageSection() {
    return Container(
        height: 75,
        width: double.infinity,
        color: Colors.white,
        child: Padding(
            padding: const EdgeInsets.only(
                top: 2.5, bottom: 5.0, left: 10.0, right: 10.0),
            child: Link(
              target: LinkTarget.self,
              uri: Uri.parse(widget.news.url),
              builder: (context, followLink) => ElevatedButton(
                onPressed: followLink,
                style: ElevatedButton.styleFrom(
                  primary: Colors.amber,
                ),
                child: Text(
                  'Read it all'.toUpperCase(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    color: Colors.black54,
                  ),
                ),
              ),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleAnimation,
      child: AnimatedFoldingWidget(
        animation: Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: _controller,
            curve: const Interval(
              0.0,
              1 / 3,
              curve: Curves.easeInOut,
            ),
          ),
        ),
        behind: OrderEntryHeader(
          height: 180,
          news: widget.news,
        ),
        front: OrderEntrySummary(
          news: widget.news,
        ),
        next: Column(
          children: [
            _senderSection(),
            AnimatedFoldingWidget(
              animation: Tween(begin: 0.0, end: 1.0).animate(
                CurvedAnimation(
                  parent: _controller,
                  curve: const Interval(
                    1 / 3,
                    1 / 3 * 2,
                    curve: Curves.easeInOut,
                  ),
                ),
              ),
              behind: _addressSection(),
              front: Container(
                height: 175,
                color: Colors.white,
              ),
              next: AnimatedFoldingWidget(
                animation: Tween(begin: 0.0, end: 1.0).animate(
                  CurvedAnimation(
                    parent: _controller,
                    curve: const Interval(
                      1 / 3 * 2,
                      1.0,
                      curve: Curves.easeInOut,
                    ),
                  ),
                ),
                behind: _deliverySection(),
                front: Container(
                  height: 0,
                  color: Colors.white,
                ),
                next: _messageSection(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
