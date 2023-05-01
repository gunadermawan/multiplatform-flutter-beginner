import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/secondScreen');
                },
                child: const Text('Go To Second Screen')),
            ElevatedButton(
              child: const Text('Navigation with data'),
              onPressed: () {
                Navigator.pushNamed(context, '/secondScreenWithData',
                    arguments: 'Hello from First Screen!');
              },
            ),
            ElevatedButton(
                onPressed: () async {
                  final scaffoldMsg = ScaffoldMessenger.of(context);
                  final result =
                      await Navigator.pushNamed(context, '/returnDataScreen');
                  SnackBar snackBar = SnackBar(content: Text('$result'));
                  scaffoldMsg.showSnackBar(snackBar);
                },
                child: const Text('Return data from another screen')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/replacementScreen');
                },
                child: const Text('Replace Screen')),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('Back'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

class SecondScreenWithData extends StatelessWidget {
  final String data;

  const SecondScreenWithData(
    this.data, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(data),
            ElevatedButton(
              child: const Text('Back'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ReturnWithData extends StatefulWidget {
  const ReturnWithData({super.key});

  @override
  State<ReturnWithData> createState() => _ReturnDataState();
}

class _ReturnDataState extends State<ReturnWithData> {
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                controller: _textController,
                decoration: const InputDecoration(labelText: 'enter your name'),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, _textController.text);
                },
                child: const Text('Send'))
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}

class ReplacementScreen extends StatelessWidget {
  const ReplacementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('Open another screen'),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/anotherScreen');
          },
        ),
      ),
    );
  }
}

class AnotherScreen extends StatelessWidget {
  const AnotherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Back To First Screen'),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Back'))
          ],
        ),
      ),
    );
  }
}
