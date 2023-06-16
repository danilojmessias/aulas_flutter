import 'package:aulas_app/aula14/model/aluno.dart';
import 'package:aulas_app/aula14/model/aluno_dao.dart';
import 'package:aulas_app/aula14/widgets/aluno_tile.dart';
import 'package:flutter/material.dart';

class ListaAlunoView extends StatefulWidget {
  const ListaAlunoView({super.key});

  @override
  State<ListaAlunoView> createState() => _ListaAlunoViewState();
}

class _ListaAlunoViewState extends State<ListaAlunoView> {
  final _matriculaController = TextEditingController();
  final _nomeController = TextEditingController();
  int? id;

  Future<void> _salvarAluno() async {
    if (id == null) {
      //verificar se os campos tao preenchido
      // textformfield tem suporte a validacao
      var aluno = Aluno(
        matricula: _matriculaController.text,
        nome: _nomeController.text,
      );
      int novoId = await AlunoDAO.inserir(aluno);
      debugPrint('Aluno inserido com id: $novoId');
      setState(() {
        _matriculaController.clear();
        _nomeController.clear();
      });
    }
  }

  Future<void> deletarAluno(Aluno aluno) async {
    await AlunoDAO.deletar(aluno);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Alunos'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 2,
                  child: TextField(
                    controller: _matriculaController,
                    decoration: const InputDecoration(
                      label: Text('Matricula'),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Flexible(
                  flex: 2,
                  child: TextField(
                    controller: _nomeController,
                    decoration: const InputDecoration(
                      label: Text('Nome'),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Flexible(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: _salvarAluno,
                    child: const Text(
                      'Salvar',
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          FutureBuilder(
            future: AlunoDAO.carregarAlunos(),
            builder: ((context, snapshot) {
              if (snapshot.connectionState != ConnectionState.done) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (snapshot.hasError) {
                var erro = snapshot.error;
                return Center(
                  child: Text('vish :$erro'),
                );
              }
              List<Aluno> alunos = snapshot.data as List<Aluno>;
              if (alunos.isEmpty) {
                return const Center(
                  child: Text('Nenhum aluno '),
                );
              }
              return ListView.builder(
                shrinkWrap: true,
                itemCount: alunos.length,
                itemBuilder: ((context, index) => AlunoTile(
                      aluno: alunos[index],
                      funcEditar: () {},
                      funcDeletar: () => deletarAluno(alunos[index]),
                    )),
              );
            }),
          )
        ],
      ),
    );
  }
}
