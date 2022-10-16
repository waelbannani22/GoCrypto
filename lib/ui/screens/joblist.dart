import 'dart:convert';

import 'package:cryptocurrency_app/drawer/custom_drawer.dart';
import 'package:cryptocurrency_app/models/exchanges.dart';
import 'package:cryptocurrency_app/models/exchanges/exchange/exchange.dart';
import 'package:cryptocurrency_app/repository/authentification.dart';
import 'package:cryptocurrency_app/ui/widgets/classmnt.dart';
import 'package:cryptocurrency_app/ui/widgets/job_list.dart';
import 'package:cryptocurrency_app/ui/widgets/list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../generated/locale_keys.g.dart';
import '../../models/job.dart';

import '../widgets/responsive.dart';

class JobList extends StatefulWidget {
  @override
  State<JobList> createState() => _JobListState();
}

class _JobListState extends State<JobList> {
  List<dynamic> jobList = [];

  Future<void> readJson() async {
    // Future<List<Exchanges>> response = await Authentification().exchangesData();
    //await rootBundle.loadString('assets/jobs.json');
    //final data = await json.decode(response);
    //print(data);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readJson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 65,
          centerTitle: false,
          title: Text(
            'EXCHANGES',
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
                        Exchangewidget(),
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
