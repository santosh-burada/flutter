import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonPressed = 'Clicked';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Santosh'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Like',
              icon: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            ),
          ],
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                setState(() {
                  buttonPressed = 'Pressed';
                });
              },
              child: Text(buttonPressed)),
        ),
      ),
    );
  }
}
