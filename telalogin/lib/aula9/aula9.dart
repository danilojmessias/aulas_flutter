import 'package:aulas_app/aula9/view/aula9_dashbord.dart';
import 'package:aulas_app/aula9/view/aula9_disciplinas.dart';
import 'package:flutter/material.dart';

class Aula09 extends StatefulWidget {
  const Aula09({super.key});

  @override
  State<Aula09> createState() => _Aula09State();
}

class _Aula09State extends State<Aula09> {
  int _selectedItem = 0;
  final _subTelas = [
    const Aula09Dashboard(),
    const Aula09Disciplinas(),
  ];
  void _alterarBottomNav(int idx) {
    if (idx == 2) {
      Navigator.pop(context);
    } else {
      setState(() {
        _selectedItem = idx;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var args =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    debugPrint('!!!!!!!!!!!!! ${args['nome']}');

    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: _subTelas[_selectedItem],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedItem,
          backgroundColor: Colors.black26,
          items: const [
            BottomNavigationBarItem(
              label: 'Pelé',
              icon: Icon(Icons.sports_soccer),
            ),
            BottomNavigationBarItem(
              label: 'Eterno',
              icon: Icon(Icons.star),
              activeIcon: Icon(Icons.hotel_class),
            ),
            BottomNavigationBarItem(
              label: 'Sair',
              icon: Icon(Icons.heart_broken),
              activeIcon: Icon(Icons.favorite),
            ),
          ],
          onTap: _alterarBottomNav,
        ),
      ),
    );
  }
}
