import 'package:citas/core/constants/imports.dart';

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

    print('Current location: $location');

    _currentIndex = tabs.indexWhere((tab) => location.contains(tab));

    if (_currentIndex == -1) {
      _currentIndex = 0;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Shell'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black, // ✅ Cor dos itens selecionados
        unselectedItemColor: Colors.black54, // ✅ Cor dos itens não selecionados
        onTap: (index) {
          final tabPath = '/home/${tabs[index]}';
          print('Navigating to $tabPath');
          context.go(tabPath);
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
