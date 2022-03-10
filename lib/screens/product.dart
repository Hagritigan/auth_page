import 'package:flutter/material.dart';
import 'package:auth_page/screens/switches-demo-screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
// This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: const [
            Padding(
                padding: EdgeInsets.only(top: 60.0),
                  child: Align(alignment: Alignment(1, 0),
                    child: SizedBox(width: 232, height: 123,
                      child: Image(image: AssetImage('assets/pizza.png')),),
                  )),
            Padding(
                padding: EdgeInsets.fromLTRB(0.0, 33.0, 0.0, 0.0),
                child: Text('Калькулятор пиццы',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),)),
            Padding(
                padding: EdgeInsets.fromLTRB(0.0, 9.0, 0.0, 0.0),
                child: Text('Выберите параметры:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),)),
            Padding(
                padding: EdgeInsets.only(top: 33),
                child: SizedBox(width: 300, height: 34)),
            Padding(
                padding: EdgeInsets.fromLTRB(10.0, 19.0, 0.0, 0.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Размеры:',
                    style: TextStyle(
                      fontSize: 18,
                    ),),
                ) ),
        ] ),
      ),
      ) );
  }
}