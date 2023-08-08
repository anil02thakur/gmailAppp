import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gmail Clone',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: GmailHomePage(),
    );
  }
}

class GmailHomePage extends StatefulWidget {
  @override
  _GmailHomePageState createState() => _GmailHomePageState();
}

class _GmailHomePageState extends State<GmailHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gmail'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
        ],
      ),
      body: _selectedIndex == 0 ? PrimaryTab() : SocialTab(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Primary',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Social',
          ),
        ],
      ),
    );
  }
}

class PrimaryTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            child: Text('A'),
          ),
          title: Text('Sender $index'),
          subtitle: Text('Subject $index'),
          trailing: Icon(Icons.star_border),
          onTap: () {},
        );
      },
    );
  }
}

class SocialTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            child: Text('B'),
          ),
          title: Text('Sender $index'),
          subtitle: Text('Subject $index'),
          trailing: Icon(Icons.star_border),
          onTap: () {},
        );
      },
    );
  }
}
