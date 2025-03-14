import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Pop'),
          ),
          SizedBox(height: 20), // Отступ между кнопками
          ElevatedButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, '/third');
            },
            child: Text('PopAndPushNamed'),
          ),
        ],
      ),
    );
  }
}