import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigation Optionsss',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(
          child: Container(
              alignment: Alignment.bottomCenter, child: _getDrawerContent()),
        ),
        appBar: AppBar(
          title: Text("Navigation Options"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                child: Text('Tab 1'),
              ),
              Tab(
                child: Text('Tab 2'),
              ),
              Tab(
                child: Text('Tab 3'),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Text('Content 1'),
            ),
            Center(
              child: Text('Content 2'),
            ),
            Center(
              child: Text('Content 3'),
            ),
          ],
        ),
      ),
    );
  }

  /// Returning a [ListView] with -
  /// 1. [DrawerHeader]
  /// 2. [ListTile]
  ///
  ListView _getDrawerContent() {
    return ListView(padding: EdgeInsets.zero, children: <Widget>[
      DrawerHeader(
        decoration: BoxDecoration(color: Theme.of(context).primaryColor),
        child: Center(
          child: Text(
            'Drawer header',
            style: Theme.of(context).textTheme.body1.copyWith(color: Colors.white),
          ),
        ),
      ),
      ListTile(
        leading: Icon(
          Icons.home,
        ),
        title: Text(
          'Some item 1',
        ),
        onTap: () {
          setState(() {
            // update state of app...
            //closing the drawer on tap of any item
            Navigator.pop(context);
          });
        },
      ),
      ListTile(
        leading: Icon(
          Icons.perm_identity,
        ),
        title: Text(
          'Some item 2',
        ),
        onTap: () {
          setState(() {
            // update state of app...
            //closing the drawer on tap of any item
            Navigator.pop(context);
          });
        },
      ),
      ListTile(
        leading: Icon(
          Icons.message,
        ),
        title: Text(
          'Some item 3',
        ),
        onTap: () {
          setState(() {
            // update state of app...
            //closing the drawer on tap of any item
            Navigator.pop(context);
          });
        },
      ),
    ]);
  }
}
