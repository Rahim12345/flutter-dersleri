import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;

  void _incrementNumber() {
    setState(() {
      number += 5;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Flutter',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(icon: const Icon(Icons.notifications), onPressed: () {}),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Text('${this.number}')),
              FilledButton(
                  onPressed: () {
                    _incrementNumber();
                  },
                  child: const Icon(Icons.add)),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.settings),
          ),
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.message),
          ),
        ]),
      ),
    );
  }
}
