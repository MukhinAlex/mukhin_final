import 'package:flutter/material.dart';
import 'package:mukhin_final/utils/drawler.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: navDrawer(context),
      appBar: AppBar(
          title: const Text('О приложении'),
          centerTitle: true,
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/auth');
              },
              child: const Text('Выйти', style: TextStyle(color: Colors.white)),
            )
          ]),
      body: ListView(
          padding: const EdgeInsets.all(10.0),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
            Text('В данном приложении реализовано', style: Theme.of(context).textTheme.headline5, textAlign: TextAlign.center,),],
            ),
            const SizedBox(height: 20,),
            Card(
              elevation: 5,
              child: ListTile(
                tileColor: Colors.indigo,
                textColor: Colors.white,
                onTap: () {},
                title: const Text('Страница авторизации'),
                trailing:
                const Checkbox(value: true, onChanged: null),
              ),
            ),
            Card(
              elevation: 5,
              child: ListTile(
                tileColor: Colors.indigo,
                textColor: Colors.white,
                onTap: () {},
                title: const Text('Сообщение об ошибке при авторизации'),
                trailing:
                const Checkbox(value: true, onChanged: null),
              ),
            ),
            Card(
              elevation: 5,
              child: ListTile(
                tileColor: Colors.indigo,
                textColor: Colors.white,
                onTap: () {},
                title: const Text('Отображение списка пользователей'),
                trailing:
                const Checkbox(value: true, onChanged: null),
              ),
            ),
            Card(
              elevation: 5,
              child: ListTile(
                tileColor: Colors.indigo,
                textColor: Colors.white,
                onTap: () {},
                title: const Text('Переход на детальную информацию о пользователе'),
                trailing:
                const Checkbox(value: true, onChanged: null),
              ),
            ),
            Card(
              elevation: 5,
              child: ListTile(
                tileColor: Colors.indigo,
                textColor: Colors.white,
                onTap: () {},
                title: const Text('Получение списка задач по id пользователя'),
                trailing:
                const Checkbox(value: true, onChanged: null),
              ),
            ),
            Card(
              elevation: 5,
              child: ListTile(
                tileColor: Colors.indigo,
                textColor: Colors.white,
                onTap: () {},
                title: const Text('Наличие темы, NavigationDrawer, AppBar'),
                trailing:
                const Checkbox(value: true, onChanged: null),
              ),
            ),
            const SizedBox(height: 20,),
            ListTile(
              leading: const FlutterLogo(size: 60.0),
              title:  Text('Мухин Александр Викторович', style: Theme.of(context).textTheme.headline6),
              subtitle: Text('группа ЦП_РКПд-21-01 \nг. Воронеж, 2022', style: Theme.of(context).textTheme.bodyText2),
              isThreeLine: true,
            ),
            ElevatedButton(onPressed: (){},
              child: const Text('Спасибо за обучение!'),
            )
        ],
      ),
    );
  }
}
