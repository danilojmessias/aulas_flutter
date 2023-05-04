import 'package:flutter/material.dart';

class Aula09Dashboard extends StatelessWidget {
  const Aula09Dashboard({super.key});
  static const routeName = '/aula9_dashboard';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Image(
                    image: AssetImage('assets/images/eterno.png'),
                  ),
                ])),
      ),
    );
  }
}
