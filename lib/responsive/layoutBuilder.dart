import 'package:flutter/material.dart';

class HomePageBuilder extends StatelessWidget {
  const HomePageBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Row(
        children: [
          Expanded(child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constrains) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('MediaQuery: ${size.width.toStringAsFixed(2)}',
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                      textAlign: TextAlign.center),
                  Text(
                    'LayoutBuilder: ${constrains.maxWidth}',
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                    textAlign: TextAlign.center,
                  )
                ],
              );
            },
          ))
        ],
      ),
    );
  }
}
