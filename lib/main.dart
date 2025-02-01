import 'package:flutter/material.dart';
import 'package:flutter_card_example/photo.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Row(
          children: [
            Flexible(
              flex: 2,
              child: Column(
                children: [
                  //
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Photo(),
            ),
          ],
        ),
      ),
    );
  }
}
