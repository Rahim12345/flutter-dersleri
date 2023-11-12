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
  final List<String> itemNames = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      title: 'Dərs 3',
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: const Icon(Icons.menu),
            title: const Text('Dərs 3'),
            centerTitle: true,
            actions: const [Icon(Icons.search)],
          ),
          body: Container(
            margin: const EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Expanded(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) {
                      return SingleChildScrollView(
                        reverse: true,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(5, 10, 5, 50),
                          child: GridTile(
                            child: Card(
                              child: Center(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Image.asset(
                                        'assets/images/${index + 1}.jpg',
                                        width: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text(
                                        'Şəkil ${index + 1}',
                                        style: const TextStyle(fontSize: 16),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: 4, // Number of items
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: itemNames.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(itemNames[index]),
                        // Add other widgets here if needed
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
