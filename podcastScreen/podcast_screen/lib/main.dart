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
          fontFamily: 'Roboto'),
      home: PodcastPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PodcastPage extends StatefulWidget {
  const PodcastPage({super.key});

  @override
  State<PodcastPage> createState() => _PodcastPageState();
}

class _PodcastPageState extends State<PodcastPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text('Overwhelming Regrets'),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {},
            ),
            actions: [
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
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'People from all walks of life explain their biggest regrets, how the regrets haunt them, and what they would have done differently.',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'by Ketan Chowdhury',
                    style: TextStyle(
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  _buildPodcastCard(),
                  _buildPodcastCard(),
                  _buildPodcastCard(),
                  _buildPodcastCard(),
                  _buildPodcastCard(),
                  _buildPodcastCard(),
                  _buildPodcastCard(),
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.play_arrow_outlined),
        onPressed: () {},
        label: Text('Resume'),
      ),
    );
  }

  Widget _buildPodcastCard() {
    return Padding(
      padding: const EdgeInsets.only(left: 0.0, right: 0.0, bottom: 4.0),
      child: Card(
        elevation: 0.0,
        color: Theme.of(context).colorScheme.surfaceVariant,
        surfaceTintColor: Theme.of(context).colorScheme.surfaceTint,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12.0),
                bottomLeft: Radius.circular(12.0),
              ),
              child: Image.network(
                'https://picsum.photos/id/19/120/120',
                height: 120.0,
                width: 120.0,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 12.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      'Lorem Ipsem',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'Lorem ipsum dolor sit am...',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 12.0,
            ),
            Padding(
              padding: EdgeInsets.only(top: 70.0, right: 12.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.play_arrow),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
