import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  FeedPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _FeedPageState createState() => _FeedPageState();
}
class _FeedPageState extends State<FeedPage> {
 int _selectedIndex = 0;

  void _onItemTapped(int index) {
  setState(() {
    _selectedIndex = index;
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: buildListView(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.list),
              title: Text("Feed"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text("Procurar"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("Perfil"),    
            ),
        ], 
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped, 
      )       
    );
  }
  buildListView(){
    
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text("IPÊ-AMARELO", textAlign: TextAlign.center, style: TextStyle(fontSize: 22)),
        ),
        
        Image.network("https://meubordado.com.br/wp-content/uploads/2018/08/Engenharia-Florestal.jpg", width: 390, height: 390),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
              GestureDetector(
                
                onTap: (){
                  
                },
               child:  
              Container(
              width: 90,
              height: 30,
                decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(5)),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.thumb_up),
                  Text("Like"),                ],
                ),
              ),
               ),
              GestureDetector(
                
                onTap: (){
                  
                },
               child:  
              Container(
              width: 90,
              height: 30,
                decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(5)),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.save_alt),
                  Text("Save"),                ],
                ),
              ),
               ),
              
              GestureDetector(
                
                onTap: (){
                  
                },
               child:  
              Container(
              width: 90,
              height: 30,
                decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(5)),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.share),
                  Text("Share"),                ],
                ),
              ),
               ),
          ],
        )
      ],

    );

  }
}
