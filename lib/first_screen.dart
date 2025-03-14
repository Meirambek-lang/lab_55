import 'package:flutter/material.dart';
import 'second_screen.dart';


class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')), // Верхняя панель с заголовком
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Центрируем элементы по вертикали
        children: [
          // Кнопка для обычного перехода на SecondScreen
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondScreen()),
              );
            },
            child: Text('Push'),
          ),
          // Кнопка для перехода с использованием именованного маршрута
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            },
            child: Text('PushNamed'),
          ),
          // Кнопка для замены текущего экрана на SecondScreen
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => SecondScreen()),
              );
            },
            child: Text('PushReplacement'),
          ),
          // Кнопка для перехода на SecondScreen с удалением всех предыдущих экранов
          ElevatedButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => SecondScreen()),
                (route) => false, // Удаляет все предыдущие экраны из стека
              );
            },
            child: Text('PushAndRemoveUntil'),
          ),
          // Кнопка для перехода по именованному маршруту с удалением всех предыдущих экранов
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(context, '/second', (route) => false);
            },
            child: Text('PushNamedAndRemoveUntil'),
          ),
        ],
      ),
    );
  }
}
