import 'package:flutter/material.dart';

// Второй экран приложения
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')), // Верхняя панель с заголовком
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Центрируем элементы по вертикали
        children: [
          // Кнопка для возврата на предыдущий экран
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Pop'),
          ),
          SizedBox(height: 20), // Отступ между кнопками
          // Кнопка для закрытия текущего экрана и перехода на third
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
