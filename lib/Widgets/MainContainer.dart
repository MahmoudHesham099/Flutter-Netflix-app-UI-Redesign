import 'package:flutter/material.dart';
import 'package:netflixredesign/Data/Data.dart';

class MainContainer extends StatelessWidget {
  final MovieOrSeries movieOrSeries;

  const MainContainer({Key key, this.movieOrSeries}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 150,
        width: 300,
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(movieOrSeries.coverUrl),
            )),
      ),
    );
  }
}
