import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_learn/ui/media_query_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: LayoutBuilderExample(),
    );
  }
}

class LayoutBuilderExample extends StatelessWidget {
  const LayoutBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Items View')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth <= 500) {
            return MobileLayout();
          } else {
            return DesktopLayout();
          }
        },
      ),
    );
  }
}

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 30,
      itemBuilder: (context, index) => Container(
        child: Card(
          color: Colors.grey[300],
          child: ListTile(
            title: Text((index + 1).toString()),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DetailsView(itemNumber: index + 1),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  int? itemNumber;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: 30,
            itemBuilder: (context, index) => Container(
              child: Card(
                color: Colors.grey[300],
                child: ListTile(
                  title: Text((index + 1).toString()),
                  onTap: () {
                    setState(() {
                      itemNumber = index + 1;
                    });
                  },
                ),
              ),
            ),
          ),
        ),
        Expanded(child: DetailsView(itemNumber: itemNumber ?? 0)),
      ],
    );
  }
}

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.itemNumber});
  final int itemNumber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          '$itemNumber',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
