import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(children: [
            Padding(
                padding: EdgeInsets.only(top: 140.0),
                child: Center(child: SizedBox(width: 104, height: 80, child: Placeholder(),))),
            Padding(
                padding: EdgeInsets.only(top: 18.0),
                child: Text('Введите логин в виде 10 цифр номера телефона')),
            Padding(
                padding: EdgeInsets.fromLTRB(38.0, 20.0, 38.0, 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFeceff1),
                    labelText: 'Телефон',
                  ),
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(38.0, 20.0, 38.0, 20.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFeceff1),
                    labelText: 'Пароль',
                  ),
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(83.0, 28.0, 83.0, 62.0),
                child: SizedBox(width: 154, height: 42,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Войти'),

                  ),
                )),
            InkWell(child: Text('Регистрация'), onTap: () {}),
            Padding(
                padding: EdgeInsets.only(top: 19.0),
                child: InkWell(child: Text('Забыли пароль?'), onTap: () {})),
          ],)
      ),
    );
  }
}


