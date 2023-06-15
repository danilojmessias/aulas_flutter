import 'package:aulas_app/aula12/model/carrinho_model.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class PedidoView extends StatelessWidget {
  const PedidoView({super.key});

  @override
  Widget build(BuildContext context) {
    var carrinho = context.watch<CarrinhoModel>();
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: carrinho.numProdutos,
              itemBuilder: (context, index) {
                var produto = carrinho.produtos[index];
                return Row(
                  children: [
                    Text(carrinho.produtos[index].nome),
                    Text('R\$ ${produto.preco.toStringAsFixed(2)}'),
                  ],
                );
              },
            ),
          ),
          Row(
            children: [
              const Text('Total'),
              const SizedBox(
                width: 8,
              ),
              Text('R\$ ${carrinho.vlTotal}'),
            ],
          ),
        ],
      ),
    );
  }
}
