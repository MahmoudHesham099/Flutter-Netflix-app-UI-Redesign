import 'package:flutter/material.dart';
import 'package:netflixredesign/Data/Data.dart';

class ContinueWatchingContainer extends StatelessWidget {
  final MovieOrSeries movieOrSeries;

  const ContinueWatchingContainer({Key key, this.movieOrSeries})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        child: Stack(
          children: [
            Container(
              height: 300,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(movieOrSeries.coverUrl),
                  )),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  color: Colors.white30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'play',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.play_circle_filled,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 35,
              right: 0,
              left: 0,
              child: Divider(
                color: Colors.white,
                thickness: 4,
              ),
            ),
            Positioned(
              bottom: 35,
              right: 40,
              left: 0,
              child: Divider(
                color: Colors.red,
                thickness: 4,
              ),
            )
          ],
        ),
      ),
    );
  }
}
