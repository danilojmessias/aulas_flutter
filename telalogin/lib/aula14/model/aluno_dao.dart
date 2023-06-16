import 'package:aulas_app/aula14/database/db_helper.dart';
import 'package:aulas_app/aula14/model/aluno.dart';
import 'package:flutter/cupertino.dart';

class AlunoDAO {
  static Future<int> inserir(Aluno aluno) async {
    var db = await DbHelper.getInstance();
    int novoid = await db.insert(
      'aluno',
      aluno.toMap(),
    );
    return novoid;
  }

  static Future<void> deletar(Aluno aluno) async {
    var db = await DbHelper.getInstance();
    await db.delete('aluno', where: 'id=?', whereArgs: [aluno.id]);
  }

  static Future<List<Aluno>> carregarAlunos() async {
    var db = await DbHelper.getInstance();
    List<Map<String, Object?>> resultado = await db.query('aluno');
    List<Aluno> alunos = resultado.map((e) => Aluno.fromMap(e)).toList();
    return alunos;
  }
}
