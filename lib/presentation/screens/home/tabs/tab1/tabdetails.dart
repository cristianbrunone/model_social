import 'package:citas/core/constants/imports.dart';

class Tab1DetailScreen extends StatelessWidget {
  final String id;
  const Tab1DetailScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Mostrando detalhes do item com ID: $id')),
    );
  }
}
