import 'package:aulas_app/aula10/widgets/carregando_widget.dart';
import 'package:aulas_app/aula9/classes/disciplinas.dart';
import 'package:aulas_app/aula9/classes/widgets/disciplina_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Aula10Future extends StatefulWidget {
  const Aula10Future({super.key});

  @override
  State<Aula10Future> createState() => _Aula10FutureState();
}

class _Aula10FutureState extends State<Aula10Future> {
  Future<String> carregarBoasVindas() async {
    await Future.delayed(const Duration(seconds: 5));
    return "Bem vindo ao inferno";
  }

  Future<List<Disciplinas>> carregarDisciplinas() async {
    await Future.delayed(
      const Duration(seconds: 4),
    );

    return Disciplinas.gerarDisciplinas();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pelé 10 eterno'),
      ),
      body: Center(
        child: FutureBuilder(
          future: carregarDisciplinas(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Text('Erro ${snapshot.error}');
              }
              var disciplinas = snapshot.data as List<Disciplinas>;

              return ListView.builder(
                itemCount: disciplinas.length,
                itemBuilder: ((context, index) =>
                    DisciplinaCards(disciplinas: disciplinas[index])),
              );
            } else {
              return const CarregandoWidget();
            }
          },
        ),
      ),
    );
  }
}
