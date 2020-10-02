import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:netflixredesign/Data/Data.dart';
import 'package:netflixredesign/Widgets/ContinueWatchingContainer.dart';
import 'package:netflixredesign/Widgets/MainContainer.dart';
import 'package:netflixredesign/Widgets/MyListContainer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff333333),
      appBar: AppBar(
        backgroundColor: Color(0xff333333),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        title: Container(
          height: 40,
          child: Image.asset('assets/netflixLogo.png'),
        ),
        centerTitle: true,
        actions: [
          Container(
            padding: EdgeInsets.all(10),
            height: 40,
            child: Image.asset('assets/neflixPP.jpg'),
          ),
        ],
        elevation: 0.0,
      ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: ListView(
              children: [
                SizedBox(height: 10),
                Container(
                  height: 200,
                  child: ListView.builder(
                      itemCount: mainList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        MovieOrSeries movieOrSeries = mainList[index];
                        return MainContainer(
                          movieOrSeries: movieOrSeries,
                        );
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Continue watching',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Icon(
                      Icons.arrow_right,
                      size: 30,
                      color: Colors.white,
                    )
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  height: 200,
                  child: ListView.builder(
                      itemCount: continueWatching.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        MovieOrSeries movieOrSeries = continueWatching[index];
                        return ContinueWatchingContainer(
                          movieOrSeries: movieOrSeries,
                        );
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'My List',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Icon(
                      Icons.arrow_right,
                      size: 30,
                      color: Colors.white,
                    )
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  height: 200,
                  child: ListView.builder(
                      itemCount: myList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        MovieOrSeries movieOrSeries = myList[index];
                        return MyListContainer(
                          movieOrSeries: movieOrSeries,
                        );
                      }),
                ),
                SizedBox(height: 70),
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            right: 20,
            left: 20,
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white54,
                  borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: GNav(
                  gap: 8,
                  activeColor: Colors.white,
                  iconSize: 25,
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  duration: Duration(milliseconds: 800),
                  tabBackgroundColor: Colors.black54,
                  tabs: [
                    GButton(
                      icon: Icons.home,
                      text: 'Home',
                    ),
                    GButton(
                      icon: Icons.search,
                      text: 'Search',
                    ),
                    GButton(
                      icon: Icons.play_circle_outline,
                      text: 'explore',
                    ),
                    GButton(
                      icon: Icons.file_download,
                      text: 'download',
                    ),
                  ],
                  selectedIndex: _selectedIndex,
                  onTabChange: (index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
