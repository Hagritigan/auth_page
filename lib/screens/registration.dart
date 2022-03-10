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
              Padding(
                padding: EdgeInsets.fromLTRB(75.0, 80.0, 94.0, 0.0),
                child: Row(children: [
                  Expanded(flex: 1,child: SizedBox(width: 20, height: 20, child: Image(image: AssetImage('assets/user.png')))),
                  Expanded(
                    flex: 4,
                    child: const Text('Регистрация',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF5C5C5C),
                      ),),
                  ),
                  ]
                ),
              ),
              const Padding(
                  padding: EdgeInsets.fromLTRB(38.0, 22.0, 38.0, 0.0),
                  child: Text('Чтобы зарегистрироваться введите свой номер телефона и почту',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFC4C4C4),
                    ),)),
              const Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 14.0, 0.0, 6.0),
                  child: Text('Телефон',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 0.6),
                      fontSize: 16,
                    ),)),
              const Padding(
                  padding: EdgeInsets.fromLTRB(38.0, 0.0, 38.0, 0.0),
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
                  padding: EdgeInsets.fromLTRB(0.0, 14.0, 0.0, 6.0),
                  child: Text('Почта',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 0.6),
                      fontSize: 16,
                    ),)),
              const Padding(
                  padding: EdgeInsets.fromLTRB(38.0, 0.0, 38.0, 24.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFeceff1),
                      enabledBorder: borderStyle,
                      focusedBorder: borderStyle,
                    ),
                  )),
              const Padding(
                  padding: EdgeInsets.fromLTRB(38.0, 0.0, 38.0, 14.0),
                  child: Text('Вам придет четырехзначный код, который будет вашим паролем',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFC4C4C4),
                    ),)),
              const Padding(
                  padding: EdgeInsets.fromLTRB(38.0, 0.0, 38.0, 0.0),
                  child: Text('Изменить пароль можно будет в личном кабинете после регистрации',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFC4C4C4),
                    ),)),
              Padding(
                  padding: const EdgeInsets.fromLTRB(83.0, 32.0, 83.0, 62.0),
                  child: SizedBox(width: 154, height: 42,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Отправить код'),
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xFF0079D0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(36.0)
                          )
                      ),
                    ),
                  )),
            ],),
          )
      ),
    );
  }
}