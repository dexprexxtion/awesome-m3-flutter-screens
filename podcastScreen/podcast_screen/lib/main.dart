import 'package:flutter/material.dart';

void main() {
  runApp(PodcastScreenApp());
}

class PodcastScreenApp extends StatelessWidget {
  const PodcastScreenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Podcast Screen',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        fontFamily: 'Roboto'
      ),
      home: PodcastPage(),
    );
  }
}

 class PodcastPage extends StatelessWidget {
  const PodcastPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text(
              'Overwhelming Regrets'
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
            backgroundColor: Theme.of(context).colorScheme.surface,
          ),
          SliverToBoxAdapter(
            child: Container(
              child: Column(
                children: <Widget>[
                _buildPodcastCard(),
                _buildPodcastCard(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildPodcastCard() {
    return Row(
      children: <Widget>[

      ],
    );
  }

 }