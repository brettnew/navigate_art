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
      home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              title: Text('Art Tab'),
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(icon: Icon(Icons.art_track), text: ArtUtil.CARAVAGGIO),
                  Tab(icon: Icon(Icons.art_track), text: ArtUtil.MONET),
                  Tab(icon: Icon(Icons.art_track), text: ArtUtil.VANGOGH),
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(ArtUtil.IMG_CARAVAGGIO),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(ArtUtil.IMG_MONET),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(ArtUtil.IMG_VANGOGH),
                        fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
