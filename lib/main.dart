import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('first screen'),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ))
        ],
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
      // body: Center(
      //   child: Container(
      //     decoration: BoxDecoration(
      //         color: Colors.red,
      //         boxShadow: const [
      //           BoxShadow(
      //             color: Colors.black,
      //             offset: Offset(3, 6),
      //             blurRadius: 10,
      //           )
      //         ],
      //         border: Border.all(color: Colors.white, width: 3),
      //         borderRadius: BorderRadius.circular(10)),
      //     padding: const EdgeInsets.all(10),
      //     child: const Text(
      //       'Hi flutter!',
      //       style: TextStyle(fontSize: 40),
      //     ),
      //   ),
      // ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const <Widget>[
          Icon(Icons.share),
          Icon(Icons.thumb_up),
          Icon(Icons.thumb_down)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
