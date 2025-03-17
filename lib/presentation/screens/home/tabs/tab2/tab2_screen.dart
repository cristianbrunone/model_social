import 'package:citas/core/constants/imports.dart';

class Tab2Screen extends StatelessWidget {
  const Tab2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () => context.push('/home/tab2/detail/456'),
        child: const Text('Detalhe do Item 456 - Tab2'),
      ),
    );
  }
}
