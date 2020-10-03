import 'package:flutter/material.dart';
import 'package:netflixredesign/Data/Data.dart';

class MovieScreen extends StatefulWidget {
  final MovieOrSeries movieOrSeries;

  const MovieScreen({Key key, this.movieOrSeries}) : super(key: key);
  @override
  _MovieScreenState createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff333333),
        body: Stack(
          children: [
            ListView(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 250,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(widget.movieOrSeries.coverUrl),
                          )),
                    ),
                    Positioned(
                      top: 5,
                      left: 5,
                      right: 5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                          Container(
                            height: 40,
                            child: Image.asset('assets/netflixLogo.png'),
                          ),
                          Icon(
                            Icons.star_border,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 70,
                      left: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.movieOrSeries.title.toUpperCase(),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Container(
                                color: Colors.white54,
                                padding: EdgeInsets.all(5),
                                child: Text(
                                  widget.movieOrSeries.categories[0],
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                color: Colors.white54,
                                padding: EdgeInsets.all(5),
                                child: Text(
                                  widget.movieOrSeries.categories[1],
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        color: Colors.black45,
                        width: MediaQuery.of(context).size.width,
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Icon(
                                  Icons.share,
                                  color: Colors.red,
                                ),
                                Text(
                                  'Share',
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.rate_review,
                                  color: Colors.red,
                                ),
                                Text(
                                  'Rate',
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.play_circle_filled,
                                  color: Colors.red,
                                ),
                                Text(
                                  'Play',
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.file_download,
                                  color: Colors.red,
                                ),
                                Text(
                                  'Download',
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            widget.movieOrSeries.year.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            widget.movieOrSeries.length,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        widget.movieOrSeries.description,
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Cast & Crew',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'see All',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 100,
                        child: ListView.builder(
                            itemCount: widget.movieOrSeries.cast.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              String img = widget.movieOrSeries.cast[index];
                              return Container(
                                height: 100,
                                width: 100,
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(img),
                                    )),
                              );
                            }),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 120,
                            width: 120,
                            margin: const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('assets/director.jpg'),
                                )),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.movieOrSeries.director['name'],
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Director',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  widget.movieOrSeries.director['details'],
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              bottom: 10,
              right: 20,
              left: 20,
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.black45,
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Overview',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        'Seasons',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        'Similar',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
