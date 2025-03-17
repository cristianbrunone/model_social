import 'package:citas/core/constants/imports.dart';

class Tab1Screen extends StatelessWidget {
  const Tab1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () => context.push('/home/tab1/detail/123'),
        child: const Text('Detalhe do Item 123 - Tab1'),
      ),
    );
  }
}
