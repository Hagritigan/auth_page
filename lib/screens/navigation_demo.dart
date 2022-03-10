import 'package:flutter/material.dart';

class NavigationDemo extends StatefulWidget {
  const NavigationDemo({Key? key}) : super(key: key);

  @override
  State<NavigationDemo> createState() => _NavigationDemoState();
}

class _NavigationDemoState extends State<NavigationDemo> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreen(),
        '/contacts': (context) => const ContactsScreen(),
        '/catalog': (context) => const CatalogScreen(),
        '/search': (context) => const SearchScreen(),
      },
    );
  }
}

Widget navDrawer(context) => Drawer(
  child: ListView(padding: EdgeInsets.zero, children: [
    DrawerHeader(
        decoration: const BoxDecoration(
          color:  Colors.blue,
        ),
        child: Container(
          height: 200,
        )),
    ListTile(
      leading: const Icon(Icons.one_k),
      title: const Text("Главная"),
      onTap: () {
        Navigator.pushNamed(context, '/');
      },
    ),
    const Divider(),
    ListTile(
      leading: const Icon(Icons.two_k),
      title: const Text("Контакты"),
      onTap: () {
        Navigator.pushNamed(context, '/contacts');
      },
    ),
    const Divider(),
    ListTile(
      leading: const Icon(Icons.three_k),
      title: const Text("Каталог"),
      onTap: () {
        Navigator.pushNamed(context, '/catalog');
      },
    ),
    const Divider(),
    ListTile(
      leading: const Icon(Icons.four_k),
      title: const Text("Поиск"),
      onTap: () {
        Navigator.pushNamed(context, '/search');
      },
    ),
  ],)
);

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Главная')),
        drawer: navDrawer(context),
        body: const Center(
          child: Text('Main paige'),
        )
    );
  }
}

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({Key? key}) : super(key: key);

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Контакты')),
        drawer: navDrawer(context),
        body: const Center(
          child: Text('Контакты'),
        )
    );
  }
}

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  State<CatalogScreen> createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Каталог')),
        drawer: navDrawer(context),
        body: const Center(
          child: Text('Каталог'),
        )
    );
  }
}

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Поиск')),
        drawer: navDrawer(context),
        body: const Center(
          child: Text('Поиск'),
        )
    );
  }
}
