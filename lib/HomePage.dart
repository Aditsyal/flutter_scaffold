import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

    int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Scaffold'),
      ),


      backgroundColor: Colors.white,



      drawer: Drawer(
        elevation: 16.0,
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("xyz"),
              accountEmail: Text("xyz@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("xyz"),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text("abc"),
                )
              ],
            ),
            ListTile(
              title: new Text("All Inboxes"),
              leading: new Icon(Icons.mail),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: new Text("Primary"),
              leading: new Icon(Icons.inbox),
            ),
            ListTile(
              title: new Text("Social"),
              leading: new Icon(Icons.people),
            ),
            ListTile(
              title: new Text("Promotions"),
              leading: new Icon(Icons.local_offer),
            )
          ],
        ),
      ),

      endDrawer: Drawer(
        elevation: 16.0,
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("xyz"),
              accountEmail: Text("xyz@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("xyz"),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text("abc"),
                )
              ],
            ),
            ListTile(
              title: new Text("All Inboxes"),
              leading: new Icon(Icons.mail),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: new Text("Primary"),
              leading: new Icon(Icons.inbox),
            ),
            ListTile(
              title: new Text("Social"),
              leading: new Icon(Icons.people),
            ),
            ListTile(
              title: new Text("Promotions"),
              leading: new Icon(Icons.local_offer),
            )
          ],
        ),
      ),

      body: Center(
        child: Text(
          "This is Homepage",
          style: TextStyle(
            color: Colors.black,
            fontSize: 40.0,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),



      //floatingActionButton
      floatingActionButton: FloatingActionButton(
          elevation: 10.0,
          child: Icon(Icons.add),
          onPressed: (){
            print('I am Floating button');
          }
      ),


      //floatingActionButtonLocation
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,


      //persistentFooterButtons
      persistentFooterButtons: <Widget>[
        RaisedButton(
          elevation: 10.0,
          onPressed: () {},
          color: Colors.green,
          child: Icon(
            Icons.print,
            color: Colors.white,
          ),
        ),
        RaisedButton(
          elevation: 10.0,
          onPressed: () {},
          color: Colors.blueGrey,
          child: Icon(
            Icons.send,
            color: Colors.white,
          ),
        ),
      ],


      //bottomNavigationBar
      bottomNavigationBar: new BottomNavigationBar(
        currentIndex: 0,
        fixedColor: Colors.teal,
        items: [
          BottomNavigationBarItem(
            title: Text("Home"),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text("Search"),
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            title: Text("Add"),
            icon: Icon(Icons.add_box),
          ),
        ],
        onTap: (int index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),


    );
  }
}

