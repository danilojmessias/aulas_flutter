import 'package:aulas_app/aula12/model/carrinho_model.dart';
import 'package:aulas_app/aula12/model/produto_model.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardapioView extends StatelessWidget {
  const CardapioView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Produto> produtos = Produto.gerarLista();
    var carrinho = context.watch<CarrinhoModel>();
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
            onTap: () {
              print('teste');
              if (carrinho.numProdutos > 0) {
                Navigator.of(context).pushNamed('/pedido_view');
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: Badge(
                badgeContent: Text('${carrinho.numProdutos}'),
                showBadge: carrinho.numProdutos > 0,
                //badgeAnimation: const BadgeAnimation.rotation(),
                //badgeStyle: const BadgeStyle(badgeColor: Colors.green),
                child: const Icon(Icons.shopping_cart),
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: produtos.length,
        itemBuilder: ((context, index) {
          return ListTile(
            title: Text(produtos[index].nome),
            subtitle: Text('R\$ ${produtos[index].preco.toStringAsFixed(2)}'),
            trailing: Padding(
                padding: const EdgeInsets.all(4),
                child: Column(
                  children: [
                    carrinho.adicionado(produtos[index])
                        ? IconButton(
                            onPressed: (() {
                              carrinho.remover(produtos[index]);
                            }),
                            icon: const Icon(Icons.remove),
                          )
                        : IconButton(
                            onPressed: (() {
                              carrinho.adicionar(produtos[index]);
                            }),
                            icon: const Icon(Icons.add_outlined),
                          ),
                  ],
                )),
          );
        }),
      ),
    );
  }
}
