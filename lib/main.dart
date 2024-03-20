import 'package:flutter/material.dart';
import 'package:lara0926/Paginas/PaginaHome.dart';
import 'package:lara0926/Paginas/PaginaUsers.dart';

void main() => runApp(MyAppNavigatorBar0926());

class MyAppNavigatorBar0926 extends StatefulWidget {
  @override
  State<MyAppNavigatorBar0926> createState() => _MyAppNavigatorBar0926State();
}

class _MyAppNavigatorBar0926State extends State<MyAppNavigatorBar0926> {
  int _paginaActual = 1;

  List<Widget> _paginas = [PaginaHome(), PaginaUsers()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Material app0926",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Material AppBar0926"),
        ),
        body: _paginas[_paginaActual],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _paginaActual = index;
            });
          },
          currentIndex: _paginaActual,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle), label: "Usuarios")
          ],
        ),
      ),
    );
  }
}
