import 'package:aulas_app/aula14/database/db_helper.dart';
import 'package:flutter/material.dart';

class Aula14 extends StatelessWidget {
  const Aula14({super.key});

  Future<void> testarBanco() async {
    var db = await DbHelper.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 250,
            child: ElevatedButton(
                onPressed: () => testarBanco(),
                child: const Text('Executar demo do Banco de Dados')),
          )
        ],
      )),
    );
  }
}
