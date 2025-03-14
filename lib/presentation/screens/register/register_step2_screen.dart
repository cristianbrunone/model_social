import 'package:citas/core/constants/imports.dart';

class RegisterStep2Screen extends StatelessWidget {
  const RegisterStep2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cadastro - Passo 2')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.go('/register/step1/step3');
          },
          child: const Text('Ir para Passo 3'),
        ),
      ),
    );
  }
}
