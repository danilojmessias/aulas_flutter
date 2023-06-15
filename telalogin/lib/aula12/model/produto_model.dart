class Produto {
  late int id;
  late String nome;
  late double preco;

  Produto({
    required this.id,
    required this.nome,
    required this.preco,
  });

  static List<Produto> gerarLista() {
    return [
      //shift alt seta pra baixo

      Produto(id: 1, nome: 'Produto 1', preco: 3),
      Produto(id: 2, nome: 'Produto 2', preco: 3.2),
      Produto(id: 3, nome: 'Produto 3', preco: 15),
      Produto(id: 4, nome: 'Produto 4', preco: 11.8),
      Produto(id: 5, nome: 'Produto 5', preco: 33),
      Produto(id: 6, nome: 'Produto 6', preco: 43),
      Produto(id: 7, nome: 'Produto 7', preco: 6),
      Produto(id: 8, nome: 'Produto 8', preco: 5),
      Produto(id: 9, nome: 'Produto 9', preco: 543),
      Produto(id: 10, nome: 'Produto 10', preco: 76),
      Produto(id: 11, nome: 'Produto 11', preco: 63),
      Produto(id: 2, nome: 'Produto 12', preco: 3.88),
    ];
  }
}
