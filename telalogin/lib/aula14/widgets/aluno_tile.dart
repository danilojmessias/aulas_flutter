import 'package:flutter/material.dart';
import 'package:aulas_app/aula14/model/aluno.dart';

class AlunoTile extends StatelessWidget {
  const AlunoTile({
    super.key,
    required this.aluno,
    required this.funcEditar,
    required this.funcDeletar,
  });

  final Aluno aluno;
  final VoidCallback funcEditar;
  final VoidCallback funcDeletar;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(aluno.nome),
      subtitle: Text(aluno.matricula),
      trailing: SizedBox(
        width: 125,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: funcEditar,
              icon: const Icon(Icons.edit),
            ),
            IconButton(
              onPressed: funcDeletar,
              icon: const Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
