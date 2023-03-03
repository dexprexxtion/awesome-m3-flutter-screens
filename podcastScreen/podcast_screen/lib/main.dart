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
    );
  }

}