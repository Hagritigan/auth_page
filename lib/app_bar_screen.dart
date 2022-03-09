import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarScreen extends StatefulWidget {
  const AppBarScreen({Key? key}) : super(key: key);

  @override
  State<AppBarScreen> createState() => _AppBarScreenState();
}

class _AppBarScreenState extends State<AppBarScreen> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle =
        TextButton.styleFrom(primary:  Theme.of(context).colorScheme.onPrimary);

    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: Text("Демо AppBar"),
          actions: <Widget>[
            IconButton(tooltip: "Фото", onPressed: () {}, icon: Icon(Icons.add_a_photo)),
            IconButton(tooltip: "Позвонить", onPressed: () {}, icon: Icon(Icons.add_ic_call)),
            TextButton(
                style: buttonStyle,
                onPressed: () {},
                child: Text("Профиль"))
          ],
        ),
        body: Text("Контент"),
      ),
    );
  }
}
