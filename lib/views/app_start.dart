import 'package:flutter/material.dart';

import 'custom_widget/bottom_navbar.dart';
import 'custom_widget/custom_appbar.dart';

class AppStart extends StatefulWidget {
  @override
  _AppStartState createState() => _AppStartState();
}

class _AppStartState extends State<AppStart> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: CustomAppBar(tabController: _tabController),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [],
          physics: MediaQuery.of(context).size.width < 400
              ? PageScrollPhysics()
              : NeverScrollableScrollPhysics(),
        ),
        bottomNavigationBar: BottomNavBar());
  }
}
