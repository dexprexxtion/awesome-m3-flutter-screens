import 'package:flutter/material.dart';

void main() {
  runApp(const ArticleScreenApp());
}

class ArticleScreenApp extends StatelessWidget {
  const ArticleScreenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Article Screen',
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
          fontFamily: 'Work Sans'),
      home: ArticleScreenPage(),
    );
  }
}

class ArticleScreenPage extends StatelessWidget {
  const ArticleScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Lorem Ipsem',
                style: TextStyle(
                  fontFamily: 'Abril Fatface',
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'dolor sit amet consectetur',
                style: TextStyle(
                  fontFamily: 'Arbutus Slab',
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
    );
  }
}
