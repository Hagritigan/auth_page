import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
// This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    const borderStyle= OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(36)),
      borderSide: BorderSide(
        color: const Color(0xFFbbbbbb), width: 2));


    return MaterialApp(
      home: Scaffold(
          body: Column(children: [
            const Padding(
                padding: EdgeInsets.only(top: 140.0),
                child: Center(child: SizedBox(width: 104, height: 80, child: Placeholder(),))),
            const Padding(
                padding: EdgeInsets.only(top: 18.0),
                child: Text('Введите логин в виде 10 цифр номера телефона',
                style: TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.6)),)),
            Padding(
                padding: EdgeInsets.fromLTRB(38.0, 20.0, 38.0, 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFeceff1),
                    labelText: 'Телефон',
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
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
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                  ),
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(83.0, 28.0, 83.0, 62.0),
                child: SizedBox(width: 154, height: 42,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Войти'),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF0079D0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(36.0)
                        )
                      ),

                  ),
                )),
            InkWell(
                child: Text('Регистрация',
                style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF0079D0),
                    fontWeight: FontWeight.bold,
                ),),
                onTap: () {}),
            Padding(
                padding: EdgeInsets.only(top: 19.0),
                child: InkWell(
                    child: Text('Забыли пароль?',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF0079D0),
                        fontWeight: FontWeight.bold
                    ),),
                    onTap: () {})),
          ],)
      ),
    );
  }
}


