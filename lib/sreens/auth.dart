import 'package:flutter/material.dart';

class Auth extends StatelessWidget {
  const Auth({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return Scaffold(
          appBar: AppBar(title: const Text('Авторизация'), centerTitle: true,),
          body: ListView(
            children: [
              Padding(
          padding:  const EdgeInsets.all(20.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            SizedBox(height: 60,),
            SizedBox(width: 118, height: 84, child: Image(image: AssetImage('assets/dart-logo.png')),),
            SizedBox(height: 20,),
            Text('Введите телефон и пароль',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Color.fromRGBO(0, 0, 0, 0.6)),),
            SizedBox(height: 20,),
            AuthForm(),
            SizedBox(height: 62,),
            Text('Для доступа используйте следующие данные:',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Color.fromRGBO(0, 0, 0, 0.6)),),
            Text('Телефон - 9001234567, Пароль - 12345',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Color.fromRGBO(0, 0, 0, 0.6)),),
          ] ,
        ),
      ),
            ],
          )
      );
  }
}

class AuthForm extends StatefulWidget {
  const AuthForm({Key? key}) : super(key: key);

  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {

  static const borderStyle = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(36)),
      borderSide: BorderSide(
          color: Color(0xFFeceff1), width: 2));

  final _phoneTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  String? message;

  void _auth() {
    final phone = _phoneTextController.text;
    final password = _passwordTextController.text;

    if(phone == '9001234567' && password == '12345'){
      message = null;
      Navigator.of(context).pushReplacementNamed('/main_screen');
    } else {
      message = 'Авторизация не удалась';
    }
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    final message = this.message;
    return Column(
      children: [
       if(message != null)...[ Text(
         message,
         style: const TextStyle(
           fontSize: 18,
           color: Colors.red,
         ),
         textAlign: TextAlign.center,
       ),
         const SizedBox(height: 20,),
       ],
       SizedBox(width: 224,
        child: TextField(
          controller: _phoneTextController,
          decoration: const InputDecoration(
            filled:true,
            fillColor: Color(0xFFeceff1),
            enabledBorder: borderStyle,
            focusedBorder: borderStyle,
            labelText: 'Телефон',
          ),
        ),
      ),
        const SizedBox(height: 20,),
         SizedBox(width: 224,
          child: TextField(
            obscureText: true,
            controller: _passwordTextController,
            decoration: const InputDecoration(
              filled:true,
              fillColor: Color(0xffeceff1),
              enabledBorder: borderStyle,
              focusedBorder: borderStyle,
              labelText: 'Пароль',
            ),
          ),
        ),
        const SizedBox(height: 28,),
        SizedBox(width: 154, height: 42, child:
        ElevatedButton(onPressed: _auth,
          child: const Text('Войти'),
          style: ElevatedButton.styleFrom(
            primary: const Color(0xFF0079D0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(36.0),
            ),
          ),
        ),
        ),
    ],);
  }
}
