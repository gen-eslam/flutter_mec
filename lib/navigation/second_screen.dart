
import 'package:flutter/material.dart';
import 'package:flutter_application_1/navigation/third_screen.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              // color: Colors.blueGrey,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ThirdRoute(),
                  ),
                );
              },
              child: const Text('push'),
            ),
            ElevatedButton(
              // color: Colors.blueGrey,
              // push
              // pop
              // pushReplacement

              onPressed: () {
                Navigator.popUntil(
                  context,
                  (route) => false,
                );
              },
              child: const Text('popUntil'),
            ),
            ElevatedButton(
              // color: Colors.blueGrey,
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ThirdRoute()));
              },
              child: const Text('pushReplacement'),
            ),
            ElevatedButton(
              // color: Colors.blueGrey,
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go back'),
            ),
          ],
        ),
      ),
    );
  }
}


