import 'package:aulas_app/app/pages/login/login_page.dart';
import 'package:aulas_app/aula10/aula10.dart';
import 'package:aulas_app/aula12/views/cardapio_view.dart';
import 'package:aulas_app/aula12/views/pedido_view.dart';
import 'package:aulas_app/aula14/aula14.dart';
import 'package:aulas_app/aula14/view/lista_alunos_view.dart';
import 'package:aulas_app/aula9/aula9.dart';
import 'package:aulas_app/aula9/view/aula10_future.dart';
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
      initialRoute: '/lista_aluno',
      routes: {
        '/': (context) => const LoginPage(),
        '/aula9': (context) => const Aula09(),
        '/aula9_dashboard': (context) => const Aula09Dashboard(),
        '/aula9_disciplinas': (context) => const Aula09Disciplinas(),
        '/aula10': (context) => const Aula10(),
        '/aula10_future': (context) => const Aula10Future(),
        '/aula12': (context) => const CardapioView(),
        '/pedido_view': (context) => const PedidoView(),
        '/aula14': (context) => const Aula14(),
        '/lista_aluno': (context) => const ListaAlunoView(),
      },
    );
  }
}
