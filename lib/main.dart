import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EOS ToDoList',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text('EOS ToDoList'),
        leading: Icon(Icons.check_box_outlined),
      ),
      body: Container(
        height: 200,
        color: Colors.lightGreen.withOpacity(0.3),
        padding: EdgeInsets.all(25),
        child: Row(
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 10,
                  color: Colors.grey,
                ),
                color: Colors.white,
              ),
              child: Container(
                  child: Icon(
                    Icons.person,
                    size: 100,
                    color: Colors.grey,
                  )),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('EOS'),
                Text(
                  '배진용',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Text('나는야 배진용')
              ],
            )
          ],
        ),
      ),
    );
  }
}

