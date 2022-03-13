import 'package:flutter/cupertino.dart';

import 'todo.dart';
import 'user.dart';
import 'users_task.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<User>> _fetchUsersList() async {
  final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));

  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((user) => User.fromJson(user)).toList();
  } else {
    throw Exception('Failed to load users from API');
  }
}

ListView _usersListView(data) {
  return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return ListTile(
            title: Text('${data[index].name}',
                style: const TextStyle(
                  fontSize: 20,
                )),
            subtitle: Text('${data[index].email}' ' id: ' '${data[index].id}'),

            leading: const Icon(
              Icons.supervised_user_circle,
              color: Colors.blue,
            ),
            onTap: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context)=>UserMission2(user: data[index],)),
              );
            }
        );
      }

  );
}


class UserListScreen extends StatelessWidget {
  const UserListScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    late Future<List<User>> futureUsersList=_fetchUsersList();
    late List<User> usersListData;
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(title: Text('Список пользователей'),),
        body: Center(
            child: FutureBuilder<List<User>>(
                future: futureUsersList,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    usersListData = snapshot.data!;
                    return _usersListView(usersListData);
                  } else if (snapshot.hasError) {
                    return Text('${snapshot.error}');
                  }

                  return const CircularProgressIndicator();
                })
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.all(40),
            children: [ListTile(
              leading: Icon(Icons.settings),
              title: Text('Настройки'),
              onTap: () {
                Navigator.pushNamed(context, '/');
                },
            )],
          ),
        ),
      ),
    );
  }
}


Future<List<ToDo>> _fetchToDo(int userid) async {
  final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/todos?userId=${userid}"));

  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);

    return jsonResponse.map((todo) => ToDo.fromJson(todo)).toList();
  } else {
    throw Exception('Failed to load users from API');
  }
}

Container _userMission(data){
  return Container(
    width: 400, height: 1000,
    child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: data.length,
        itemBuilder: (context, index){
          return   ListTile(
              title: Column(
                children: [
                  Row(
                    children: [
                      Text('${data[index].title}', style: TextStyle(fontSize: 10),) ,
                      Checkbox(value: data[index].completed, onChanged: (val){})
                    ],
                  ),
                ],
              )
          );
        }
    ),
  );
}

class UserMission2 extends StatelessWidget {

  final User user;

  UserMission2({required this.user,});

  @override
  Widget build(BuildContext context) {

    late Future<List<ToDo>> userToDo=_fetchToDo(user.id);
    late List<ToDo> todo;
    return  MaterialApp(
      initialRoute: '/',

      home: Scaffold(
        appBar: AppBar(title: Text('Задачи пользователя'),),

        body: SingleChildScrollView(
          child: Column(
            children:[
              Container(
                child: Text('user ID:${user.id} \n'
                    'name: ${user.name}\n'
                    'username: ${user.username}\n'
                    'email: ${user.email}\n'
                    'phone: ${user.phone}\n'
                    'website: ${user.website}\n'
                    'company: ${user.company}\n'
                    // 'address: ${user.address}'
                ),
              ),

              Center(
                child: FutureBuilder<List<ToDo>>(
                  future: userToDo,
                  builder:(context, snapshot){
                    if (snapshot.hasData) {
                      todo=snapshot.data!;
                      return _userMission(todo);
                    }
                    else if (snapshot.hasError) {
                      return Text('${snapshot.error}');
                    }
                    return const CircularProgressIndicator();
                  },

                ),
              )

            ],
          ),
        ),
        drawer:  Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Меню навигации', style: TextStyle(color: Colors.white),),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Список пользователей'),
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
              )],
          ),
        ),
      ),
    );
  }
}

