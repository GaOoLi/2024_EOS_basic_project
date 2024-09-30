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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        fontFamily: 'Pretendard',
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
        backgroundColor: Colors.lightGreen.withOpacity(0.1),
        title: Text('EOS ToDoList'),
        leading: Image.asset('assets/images/eos_logo.png'),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            padding: EdgeInsets.all(25),
            child: Row(
              children: [
                Container(
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 10,
                      color: Colors.grey,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Container(
                      child: Image.asset('assets/images/eos_logo.png'),
                      ),
                ),
                SizedBox(
                  width: 35,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '배진용',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text('나는야 배진용'),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 500,
            color: Colors.lightGreen.withOpacity(0.1),
          )
        ],
      ),
    );
  }
}

