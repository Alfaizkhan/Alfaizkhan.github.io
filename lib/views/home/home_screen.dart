import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final TabController tabController;

  const HomeScreen({key, required this.tabController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          width: MediaQuery.of(context).size.width,
          color: Theme.of(context).backgroundColor,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 15, top: 50),
                child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/profile.jpg"),
                    radius: 120),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Alfaizkhan Pathan",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.05),
                child: Text(
                  "Android and Flutter Dev📱",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                    right: MediaQuery.of(context).size.width * 0.05,
                    top: 30),
                child: AutoSizeText.rich(
                  TextSpan(
                    text:
                        "I am very energetic and motivated about learning new things and having some new experiences. A geek who loves his job. Eager to put my skills‍ and solve problems in collaboration with creative people in an organized team. \nI live and breathe all the technologies I work with. \nI am in love with Android and Flutter development💙",
                  ),
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ),
            ],
          )),
    );
  }
}
