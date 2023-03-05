import 'package:flutter/material.dart';

void main() {
  runApp(SavedPodcastsApp());
}

class GlobalContextService {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
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
      navigatorKey: GlobalContextService.navigatorKey,
      home: SavedPodcastsPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SavedPodcastsPage extends StatefulWidget {
  const SavedPodcastsPage({super.key});

  @override
  State<SavedPodcastsPage> createState() => _SavedPodcastsPageState();
}

class _SavedPodcastsPageState extends State<SavedPodcastsPage> {
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
            padding: const EdgeInsets.only(left: 0, bottom: 8),
            child: Card(
              color: Theme.of(context).colorScheme.surface,
              surfaceTintColor: Theme.of(context).colorScheme.surfaceTint,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Theme.of(context).colorScheme.outline,
                ),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.network(
                      'https://picsum.photos/id/25/200',
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.0, left: 16.0, bottom: 8.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Podcast',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0,
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text('34 episodes',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16.0,
                              ))
                        ]),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 0, bottom: 8),
            child: Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Theme.of(context).colorScheme.outline,
                ),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.network(
                      'https://picsum.photos/id/106/200',
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.0, left: 16.0, bottom: 8.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Podcast',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0,
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text('27 episodes',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16.0,
                              ))
                        ]),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
