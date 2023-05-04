import 'package:aulas_app/app/pages/login/login_page.dart';
import 'package:aulas_app/aula9/aula9.dart';
import 'package:aulas_app/aula9/view/aula9_dashbord.dart';
import 'package:aulas_app/aula9/view/aula9_disciplinas.dart';
import 'package:flutter/material.dart';

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login do Rei',
      theme: ThemeData(
        colorSchemeSeed: Colors.deepPurple,
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/aula9': (context) => const Aula09(),
        '/aula9_dashboard': (context) => const Aula09Dashboard(),
        '/aula9_disciplinas': (context) => const Aula09Disciplinas(),
      },
    );
  }
}
