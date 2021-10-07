import 'package:flutter/material.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({Key key}) : super(key: key);

  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[800],
          toolbarHeight: 8,
          bottom: TabBar(
            indicatorColor: Colors.red[800],
            indicatorWeight: 5,
            // ignore: prefer_const_literals_to_create_immutables
            tabs: [
              const Tab(
                icon: Icon(Icons.home),
                text: 'Top Stories',
              ),
              const Tab(
                icon: Icon(Icons.star),
                text: 'Headlines',
              ),
              const Tab(
                icon: Icon(Icons.face),
                text: 'Popular',
              ),
              const Tab(
                icon: Icon(Icons.bike_scooter),
                text: 'Sports',
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          buildPage("TopStories"),
          buildPage('Headlines'),
          buildPage('PopularNews'),
          buildPage('SportsNews'),
        ]),
      ),
    );
  }

  Widget buildPage(String text) => Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 28),
        ),
      );
}
