import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter demo',
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: HexColor('#9E6151'),
          centerTitle: true,
          title: Text(
            'Flutter Demo1',
          ),
          actions: [
            IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  print('object');
                }),
          ],
          leading: Icon(Icons.menu),
        ),
        body: Center(
          child: Column(
            children: [
              CupertinoButton(
                child: Text('data'),
                onPressed: () {},
              ),
              TextButton(
                onPressed: null,
                child: Text('data'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
