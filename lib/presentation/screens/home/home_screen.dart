import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/constants/routes.dart';
import '../home/tabs/tab1/tab1_screen.dart';
import '../home/tabs/tab2/tab2_screen.dart';
import '../home/tabs/tab3/tab3_screen.dart';
import '../home/tabs/tab4/tab4_screen.dart';

class HomeShell extends StatefulWidget {
  final Widget child;

  const HomeShell({super.key, required this.child});

  @override
  State<HomeShell> createState() => _HomeShellState();
}

class _HomeShellState extends State<HomeShell> {
  int _currentIndex = 0;

  final tabs = [AppRoutes.tab1, AppRoutes.tab2, AppRoutes.tab3, AppRoutes.tab4];

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).uri.toString();
    _currentIndex = tabs.indexWhere((tab) => location.contains(tab));
    if (_currentIndex == -1) _currentIndex = 0;

    return Scaffold(
      appBar: AppBar(title: const Text('Home Shell')),
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          context.go('${AppRoutes.home}/${tabs[index]}');
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Tab 1'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Tab 2'),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Tab 3',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Tab 4'),
        ],
      ),
    );
  }
}
