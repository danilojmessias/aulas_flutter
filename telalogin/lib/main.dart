import 'package:aulas_app/app/login_app.dart';
import 'package:aulas_app/aula12/model/carrinho_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CarrinhoModel(),
      child: const LoginApp(),
    ),
  );
}
