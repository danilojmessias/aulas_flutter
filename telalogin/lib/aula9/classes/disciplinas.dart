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
        codigo: '9',
        nome: 'Coutinho',
        professor: 'Gênio da pequena área',
      ),
      Disciplinas(
        codigo: '11',
        nome: 'Pepe',
        professor: 'Canhão da Vila',
      ),
      Disciplinas(
        codigo: '7',
        nome: 'Dorval',
        professor: 'Pé de Valsa',
      ),
      Disciplinas(
        codigo: '10',
        nome: 'Pelé',
        professor: 'Rei',
      ),
      Disciplinas(
        codigo: '8',
        nome: 'Mengalvio',
        professor: 'Pluto',
      ),
      Disciplinas(
        codigo: '5',
        nome: 'Zito',
        professor: 'Capitão',
      ),
      Disciplinas(
        codigo: '4',
        nome: 'Lima',
        professor: 'Coringa',
      ),
      Disciplinas(
        codigo: '2',
        nome: 'Mauro Ramos',
        professor: 'Miss Brasil',
      ),
      Disciplinas(
        codigo: '6',
        nome: 'Calvet',
        professor: 'Valente Gaucho',
      ),
      Disciplinas(
        codigo: '3',
        nome: 'Dalmo',
        professor: 'Herói do Bi Mundial',
      ),
      Disciplinas(
        codigo: '1',
        nome: 'Gilmar',
        professor: 'Campeão de tudo',
      ),
    ];
  }
}
