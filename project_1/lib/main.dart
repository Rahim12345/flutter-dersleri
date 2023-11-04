import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: CircleAvatar(
            radius: 20,
            child: ClipOval(
              child: Image.network(
                'https://rs-code.az/img/slid/homebg.webp',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Center(
            child: Text('RAHIM'),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
              ),
            )
          ],
        ),
      ),
    );
  }
}
