import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String message;

  const SecondScreen( {required this.message, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(message),
            OutlinedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('back'))
          ],
        ),
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  final String message = 'hello from first screen';

  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('first screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('intent screen'),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SecondScreen(message: message)));
          },
        ),
      ),
    );
  }
}
