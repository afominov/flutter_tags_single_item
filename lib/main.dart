import 'package:flutter/material.dart';
import 'package:flutter_tags/flutter_tags.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  final List items = [
    'one',
    'two',
    'three',
    'four',
    'five',
    'six',
    'seven',
    'eight',
    'nine',
    'ten',
    'one',
    'two',
    'three',
    'four',
    'five',
    'six',
    'seven',
    'eight',
    'nine',
    'ten',
    'one',
    'two',
    'three',
    'four',
    'five',
    'six',
    'seven',
    'eight',
    'nine',
    'ten',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('DEMO'),
        ),
        body: Tags(
          itemCount: items.length,
          verticalDirection: VerticalDirection.down,
          alignment: WrapAlignment.start,
          spacing: 4.0,
          runSpacing: 8.0,
          symmetry: false,
          horizontalScroll: true,
          itemBuilder: (int index) {
            return ItemTags(
              key: Key(index.toString()),
              index: index,
              title: items[index],
              elevation: 0,
              singleItem: true,
              alignment: MainAxisAlignment.start,
              splashColor: Colors.transparent,
              padding: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 15.0,
              ),
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              onPressed: (item) => print(item),
            );
          },
        ),
      ),
    );
  }
}
