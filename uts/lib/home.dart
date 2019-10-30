import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final kimetsu = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundImage: AssetImage('img/kimetsu1.jpg'),
        ),
      ),
    );
// TODO : memuat tampilan avatar tab 1
    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'SUGENG RAWUH ING MRIKI',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Dibuat untuk memnuhi tugas UTS Framework Mobile',
        style: TextStyle(fontSize: 16.0, color: Colors.black),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.red,
          Colors.cyanAccent,
        ]),
      ),
      child: Column(
        children: <Widget>[kimetsu, welcome, lorem],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}
class tab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.account_box)),
                Tab(icon: Icon(Icons.ac_unit)),
                Tab(icon: Icon(Icons.list)),
              ],
            ),
            title: Text(''),
          ),
          body: TabBarView(
            children: [
              HomePage(),
              SnackBarPage(),
              list(),

            ],

          ),
          drawer: drawer(),
        ),
      ),
    );
  }
  @override
  // TODO : membuat drawer yang berisikan avatar dan 2 list
  Widget drawer() {
    return Scaffold(
      body: tab(),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: CircleAvatar(
                radius: 72.0,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('img/kimetsu1.jpg'),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer

              },
            ),
            ListTile(
              title: Text('Snackbar'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
              },
            ),
          ],
        ),
      ),
    );
  }
} //TODO : digunakan untuk membuat 3 tab.
class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: Text(' SnackBar '),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );

          Scaffold.of(context).showSnackBar(snackBar);
        },
        child: Text('Show SnackBar'),

      ),
    );
  }
} //TODO : digunakan untuk menampilkan snackbar saat button di tekan.
class list extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = '';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.arrow_forward),
              title: Text('Tanjirou'),


            ),
            ListTile(
              leading: Icon(Icons.arrow_forward),
              title: Text('Muzan'),
            ),
            ListTile(
              leading: Icon(Icons.arrow_forward),
              title: Text('Nezuko'),
            ),
          ],
        ),
      ),
    );
  }
} //TODO : digunakan untuk menampilkan listView dengan isi Tanzirou,Muzan,dan Nezuko.