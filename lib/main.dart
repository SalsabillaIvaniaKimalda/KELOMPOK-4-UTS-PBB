import 'package:flutter/material.dart';
import 'MyProfil.dart';
import 'Tampilan_mobil.dart';

void main() {
  runApp(
    MaterialApp(
      home: Home(),
      routes: <String, WidgetBuilder>{
        '/page1': (BuildContext context) => Home(),
        '/page2': (BuildContext context) => MyProfil(),
        '/page3': (BuildContext context) => Tampilanmobil(),
      },
    ),
  );
}

class Home extends StatelessWidget {
  final String teks = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GoTrav'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person_outline),
            onPressed: () {
              Navigator.pushNamed(context, '/page2');
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: Image.asset(
                'images/gotrav.jpg',
                fit: BoxFit.fitWidth,
              ),
            ),
            Container(
              padding: EdgeInsets.all(50.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Masukkan Lokasi Anda Sekarang',
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/page3');
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(10.0), backgroundColor: Colors.blueAccent,
                ),
                child: Text(
                  'Search',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
