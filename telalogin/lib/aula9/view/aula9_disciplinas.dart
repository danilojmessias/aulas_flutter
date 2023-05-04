import 'package:aulas_app/aula9/classes/discplinas.dart';
import 'package:flutter/material.dart';

class Aula09Disciplinas extends StatelessWidget {
  const Aula09Disciplinas({super.key});
  static const routeName = '/aula9_disciplinas';
  @override
  Widget build(BuildContext context) {
    final List<Disciplinas> disciplinas = Disciplinas.gerarDisciplinas();
    return ListView.builder(
      itemCount: disciplinas.length,
      itemBuilder: (context, index) => ListTile(
        leading: Text(disciplinas[index].codigo),
        title: Text(disciplinas[index].nome),
        subtitle: Text(disciplinas[index].professor),
      ),
    );
  }
}
