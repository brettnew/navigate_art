import 'package:flutter/material.dart';
import 'package:navigate_art/art_util.dart';
import 'package:navigate_art/art_route.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigating art',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: ArtRoute(art: ArtUtil.IMG_VANGOGH),
    );
  }
}
