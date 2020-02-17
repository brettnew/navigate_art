import 'package:flutter/material.dart';
import './art_util.dart';

class ArtRoute extends StatelessWidget {
  final String art;
  ArtRoute({@required this.art});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Text('Choose your art',
                    style: TextStyle(fontSize: 24.0, color: Colors.white)),
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    image: DecorationImage(
                      image: NetworkImage('https://bit.ly/fl_sky'),
                      fit: BoxFit.fill,
                    )),
              ),
              ListTile(
                  title: Text(ArtUtil.CARAVAGGIO),
                  trailing: Icon(Icons.art_track),
                  onTap: () => changeRoute(context, ArtUtil.CARAVAGGIO)),
              ListTile(
                  title: Text(ArtUtil.MONET),
                  trailing: Icon(Icons.art_track),
                  onTap: () => changeRoute(context, ArtUtil.MONET)),
              ListTile(
                  title: Text(ArtUtil.VANGOGH),
                  trailing: Icon(Icons.art_track),
                  onTap: () => changeRoute(context, ArtUtil.VANGOGH)),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Navigating art'),
          actions: <Widget>[
            PopupMenuButton(
              // icon: Icon(Icons.image),
              // child: Text('Change Route'),
              itemBuilder: (BuildContext context) {
                return ArtUtil.menuItems.map((String item) {
                  return PopupMenuItem<String>(
                    child: Text(item),
                    value: item,
                  );
                }).toList();
              },
              onSelected: (value) => changeRoute(context, value),
            )
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(art),
              fit: BoxFit.cover,
            ),
          ),
        ));
  }

  void changeRoute(BuildContext context, String menuItem) {
    String image;
    switch (menuItem) {
      case ArtUtil.CARAVAGGIO:
        {
          image = ArtUtil.IMG_CARAVAGGIO;
          break;
        }
      case ArtUtil.MONET:
        {
          image = ArtUtil.IMG_MONET;
          break;
        }
      case ArtUtil.VANGOGH:
        {
          image = ArtUtil.IMG_VANGOGH;
          break;
        }
    }
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ArtRoute(art: image)));
  }
}
