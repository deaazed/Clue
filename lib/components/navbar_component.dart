import 'package:clue/services/router.dart';
import 'package:flutter/material.dart';

class NavbarComponent extends StatefulWidget {
  const NavbarComponent({super.key});

  @override
  State<NavbarComponent> createState() => _NavbarComponentState();
}

class _NavbarComponentState extends State<NavbarComponent> {
  String _selectedRoute = '/';

  void _setRoute(String route) {
    setState(() {
      _selectedRoute = route;
    });

    router.go(route);
  }

  Color _selectedIconColor(String route) {
    return _selectedRoute == route ? Colors.grey.shade100 : Colors.grey.shade500;
  }
  
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: const Color.fromRGBO(33, 7, 51, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home, color: _selectedIconColor('/')),
            onPressed: () => _setRoute('/'),
          ),
          IconButton(
            icon: Icon(Icons.search, color: _selectedIconColor('/search')),
            onPressed: () => _setRoute('/search'),
          ),
          IconButton(
            icon: const Icon(Icons.qr_code_2, color: Colors.black, size: 30),
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.grey.shade100),
              shape: WidgetStateProperty.all(const CircleBorder()),
              padding: WidgetStateProperty.all(const EdgeInsets.all(10)),
            ),
            onPressed: () => _setRoute('/scan'),
          ),
          IconButton(
            icon: Icon(Icons.map, color: _selectedIconColor('/map')),
            onPressed: () => _setRoute('/map'),
          ),
          IconButton(
            icon: Icon(Icons.person, color: _selectedIconColor('/profile')),
            onPressed: () => _setRoute('/profile'),
          )
        ],
      ),
    );
  }
}