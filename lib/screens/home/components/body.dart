import 'package:flutter/material.dart';
import 'package:plantap/constants.dart';
import 'package:plantap/screens/home/components/featured_plants.dart';
import 'package:plantap/screens/home/components/header_with_searchbox.dart';
import 'package:plantap/screens/home/components/recommend_plants.dart';
import 'package:plantap/screens/home/components/title_with_more_button.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recommend", press: () {}),
          RecommendPlants(),
          TitleWithMoreBtn(title: "Featured Plants", press: () {}),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
