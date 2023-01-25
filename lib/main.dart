import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bottom Nav Bar Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    Container(
      color: Colors.blue[100],
      child: const Center(
        child: Text(
          'Inicio',
        ),
      ),
    ),
    Container(
      color: Colors.purple[100],
      child: const Center(
        child: Text(
          'Busqueda',
        ),
      ),
    ),
    Container(
      color: Colors.brown[100],
      child: const Center(
        child: Text(
          'Perfil',
        ),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.blue),
                label: 'Inicio',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search, color: Colors.purple),
                label: 'Busqueda',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.brown),
                label: 'Perfil',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: const Color.fromARGB(255, 9, 9, 9),
            onTap: _onItemTapped));
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
