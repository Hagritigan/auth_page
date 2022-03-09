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
          body: SingleChildScrollView(
            child: Column(children: [
              const Padding(
                  padding: EdgeInsets.only(top: 140.0),
                  child: Center(child: SizedBox(width: 104, height: 80, child: Image(image: AssetImage('assets/dart-logo.png')),))),
              const Padding(
                  padding: EdgeInsets.fromLTRB(38.0, 18.0, 38.0, 0.0),
                  child: Text('Введите логин в виде 10 цифр номера телефона',
                  style: TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.6)),)),
              const Padding(
                  padding: EdgeInsets.fromLTRB(38.0, 20.0, 38.0, 20.0),
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFeceff1),
                      labelText: 'Телефон',
                      enabledBorder: borderStyle,
                      focusedBorder: borderStyle,
                    ),
                  )),
              const Padding(
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
                  padding: const EdgeInsets.fromLTRB(83.0, 28.0, 83.0, 62.0),
                  child: SizedBox(width: 154, height: 42,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('Войти'),
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFF0079D0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(36.0)
                          )
                        ),
                    ),
                  )),
              InkWell(
                  child: const Text('Регистрация',
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF0079D0),
                      fontWeight: FontWeight.bold,
                  ),),
                  onTap: () {}),
              Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 18.0, 0.0, 84.0),
                  child: InkWell(
                      child: const Text('Забыли пароль?',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF0079D0),
                          fontWeight: FontWeight.bold
                      ),),
                      onTap: () {})),
            ],),
          )
      ),
    );
  }
}


