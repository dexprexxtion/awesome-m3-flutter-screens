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
      ),
      home: ArticleScreenPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ArticleScreenPage extends StatelessWidget {
  const ArticleScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    String articleText1 =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed a nisl id erat sagittis pharetra. Aenean fringilla dui et nulla laoreet, id suscipit massa mollis. Proin condimentum risus dui. Cras nec sapien sit amet justo blandit ornare. Morbi leo tellus, dapibus in vulputate et, consequat sit amet sapien. Cras ut lectus nec turpis ullamcorper convallis. Nam accumsan sit amet tortor ac condimentum. Ut posuere massa risus, sagittis eleifend neque tincidunt eget. Nunc consequat purus vel blandit ullamcorper. Morbi consectetur efficitur odio eu porttitor. Suspendisse accumsan fermentum tincidunt. Aenean eu turpis in massa blandit faucibus. Curabitur eleifend pharetra augue, eu ultrices sem vestibulum vel. Pellentesque bibendum luctus arcu, vitae lacinia est hendrerit vel. Vestibulum aliquet est sit amet odio congue tincidunt.";
    String articleText2 =
        "Proin ut est vitae libero pharetra tincidunt. Aliquam blandit risus ac nunc suscipit condimentum. Morbi et euismod tortor, a sollicitudin nisl. Phasellus aliquet id lorem non lacinia. Phasellus in mollis velit, eu vestibulum quam. Sed egestas dui velit, in dapibus dolor consectetur quis. Proin metus mauris, condimentum quis consequat semper, accumsan rutrum ipsum. Aenean non tempor tortor, ut fringilla diam. Quisque quis magna ut massa scelerisque pellentesque nec quis mi. Sed luctus arcu eu orci consectetur, sed pulvinar massa gravida. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur efficitur mattis metus quis hendrerit. Nunc in enim fringilla, consectetur lacus nec, aliquam nunc.";
    return Scaffold(
      appBar: AppBar(
        title: Text('Lorem Ipsem'),
        automaticallyImplyLeading: true,
      ),
      body: SafeArea(
          child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Lorem Ipsem',
              style: TextStyle(
                fontFamily: 'Abril Fatface',
                fontSize: 48.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              'Dolor sit amet consectetur',
              style: TextStyle(
                fontFamily: 'Arbutus Slab',
                fontSize: 32.0,
              ),
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                SizedBox(
                  width: 256.0,
                  child: Divider(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              articleText1,
              style: TextStyle(
                fontSize: 16.0,
                fontFamily: 'Work Sans',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              articleText2,
              style: TextStyle(
                fontSize: 16.0,
                fontFamily: 'Work Sans',
              ),
            ),
          ),
        ],
      )),
    );
  }
}
