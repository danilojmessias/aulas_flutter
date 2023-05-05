import 'package:aulas_app/aula9/classes/disciplinas.dart';
import 'package:flutter/material.dart';

class DisciplinaCards extends StatelessWidget {
  const DisciplinaCards({
    super.key,
    required this.disciplinas,
  });

  final Disciplinas disciplinas;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width * 0.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(disciplinas.codigo),
            Text(disciplinas.nome),
            Text(disciplinas.professor),
          ],
        ),
      ),
    );
  }
}
