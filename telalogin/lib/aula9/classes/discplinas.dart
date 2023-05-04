class Disciplinas {
  late final String codigo;
  late final String nome;
  late final String professor;

  Disciplinas({
    required this.codigo,
    required this.nome,
    required this.professor,
  });

  static List<Disciplinas> gerarDisciplinas() {
    return [
      Disciplinas(
        codigo: '10',
        nome: 'Pelé',
        professor: 'Rei',
      ),
      Disciplinas(
        codigo: '11',
        nome: 'Neymar',
        professor: 'Ousado',
      ),
      Disciplinas(
        codigo: '9',
        nome: 'Coutinho',
        professor: 'Gênio da pequena área',
      ),
    ];
  }
}
