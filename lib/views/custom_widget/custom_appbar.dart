import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class CustomAppBar extends StatelessWidget {
  final TabController tabController;

  static const TextStyle style = TextStyle(fontSize: 18);

  const CustomAppBar({key, required this.tabController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: Container(
        margin: MediaQuery.of(context).size.width <= 400
            ? EdgeInsets.all(0)
            : MediaQuery.of(context).size.width > 400 &&
                    MediaQuery.of(context).size.width < 600
                ? EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.1)
                : EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.25),
        height: 60,
        child: TabBar(
          controller: tabController,
          indicatorWeight: 5,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: Theme.of(context).primaryColor,
          unselectedLabelColor: Colors.white,
          labelColor: Theme.of(context).primaryColor,
          tabs: [
            Container(
              height: 60,
              child: Center(
                child: AutoSizeText(
                  "Introduction",
                  maxLines: 1,
                  style: style,
                ),
              ),
            ),
            Container(
              height: 60,
              child: Center(
                child: AutoSizeText(
                  "Projects",
                  maxLines: 1,
                  style: style,
                ),
              ),
            ),
            Container(
              height: 60,
              child: Center(
                child: AutoSizeText(
                  "About",
                  maxLines: 1,
                  style: style,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
