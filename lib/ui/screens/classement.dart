import 'package:cryptocurrency_app/drawer/custom_drawer.dart';
import 'package:cryptocurrency_app/ui/widgets/classmnt.dart';
import 'package:cryptocurrency_app/ui/widgets/list_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../generated/locale_keys.g.dart';
import '../widgets/responsive.dart';

class Classement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 65,
          centerTitle: false,
          title: Text(
            'Leaderboard',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
        drawer: const CustomDrawer(),
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 5,
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        QuoteListWidget(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
