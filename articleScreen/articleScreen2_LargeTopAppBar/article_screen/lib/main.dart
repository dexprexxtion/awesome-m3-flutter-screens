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
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text(
              'Lorem Ipsum',
              style: TextStyle(
                fontFamily: 'Abril Fatface',
                fontSize: 48.0,
              ),
            ),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {},
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.bookmark_add),
                onPressed: () {},
              ),
            ],
            pinned: true,
            expandedHeight: 200.0,
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 0.0),
                    child: Text(
                      'Dolor sit amet consectetur ',
                      style: TextStyle(
                        fontSize: 32.0,
                        fontFamily: 'Arbutus Slab',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
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
                  SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    articleText1,
                    style: TextStyle(
                      fontFamily: 'Work Sans',
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Image.network(
                    'https://picsum.photos/id/11/400/300',
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(articleText2,
                      style: TextStyle(
                        fontFamily: 'Work Sans',
                        fontSize: 16.0,
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
          icon: Icon(Icons.edit_outlined),
          onPressed: () {},
          label: Text('Edit')),
    );
  }
}
