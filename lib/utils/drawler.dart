import 'package:flutter/material.dart';

Widget navDrawer(context) => Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: [
      DrawerHeader(
        decoration: const BoxDecoration(
          color: Colors.indigo,
        ),
        child: SizedBox(
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height : 100,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50.0))
                ),
                child: const Image(image: AssetImage('assets/dart-logo.png')),
              ),
              const SizedBox(height: 20,),
              const Text("Мухин А.В. итоговый проект", style: TextStyle(color: Colors.white),),
            ],
          ),
        ),
      ),
      ListTile(
        leading: const Icon(Icons.home),
        title: const Text('Пользователи', style: TextStyle(fontSize: 18,),),
        onTap: (){
          Navigator.pushNamed(context, '/main_screen');
        },
      ),
      const Divider(color: Colors.indigo, indent: 25, endIndent: 25,),
      ListTile(
        leading: const Icon(Icons.info),
        title: const Text('О приложении', style: TextStyle(fontSize: 18,),),
        onTap: (){
          Navigator.pushNamed(context, '/about_screen');
        },
      ),
      const Divider(color: Colors.indigo, indent: 25, endIndent: 25,),
      const SizedBox(height: 300,),
      const Center(child: Text('Сделано на Flutter, 2022')),
    ],
  ),
);