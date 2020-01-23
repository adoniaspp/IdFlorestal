import 'package:flutter/material.dart';
import 'package:id_florestal/telaPrincipal.dart';
import './feed.dart';
import './pesquisa.dart';
import './perfil.dart';

//void main() => runApp(IdFlorestalApp());

/*class IdFlorestalApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IdFlorestal',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Main(),
    );
  }
}*/

class IdFlorestalApp extends StatefulWidget {
  @override
  IdFlorestalAppState createState() => IdFlorestalAppState();
}

class IdFlorestalAppState extends State<IdFlorestalApp> {
  int _selectedIndex = 0;
  final _indexTitleMap = <int, String>{
    0: "Feed",
    1: "Pesquisa",
    2: "Perfil"
  };
  final _indexWidgetMap = <int, Widget>{
    0: FeedPage(),
    1: Pesquisa(),
    2: Perfil()
  };

  String getCurrentTitle() => _indexTitleMap[_selectedIndex];
  Widget getCurrentWidget() => _indexWidgetMap[_selectedIndex];
  onTap(int index) => setState(() => _selectedIndex = index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(getCurrentTitle()),
      ),
      body: getCurrentWidget(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.list), title: Text("Feed")),
          BottomNavigationBarItem(icon: Icon(Icons.search), title: Text("Pesquisa")),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("Perfil"))
        ],
        currentIndex: _selectedIndex,
        onTap: onTap,
      ),
    );
  }
}
