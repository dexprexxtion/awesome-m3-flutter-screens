import 'package:flutter/material.dart';

void main() {
  runApp(SavedPodcastsApp());
}

class SavedPodcastsApp extends StatelessWidget {
  const SavedPodcastsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Saved Podcasts',
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
          fontFamily: 'Roboto'),
      home: SavedPodcastsPage(),
    );
  }
}

class SavedPodcastsPage extends StatelessWidget {
  const SavedPodcastsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar.large(
          title: Text(
            'Saved podcasts',
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
          pinned: true,
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
            child: Column(
              children: <Widget>[
                _buildCardRow(),
                _buildCardRow(),
                _buildCardRow(),
                _buildCardRow(),
                _buildCardRow(),
                _buildCardRow(),
              ],
            ),
          ),
        )
      ],
    ));
  }

  Widget _buildCardRow() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: SizedBox(
                width: 300,
                height: 100,
                child: Center(
                  child: Text('Outlined Card'),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: SizedBox(
                width: 300,
                height: 100,
                child: Center(
                  child: Text('Outlined Card'),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
