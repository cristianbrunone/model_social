import 'package:citas/core/constants/imports.dart';

class RegisterStep1Screen extends StatelessWidget {
  const RegisterStep1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cadastro - Passo 1')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.go('/register/step1/step2');
          },
          child: const Text('Ir para Passo 2'),
        ),
      ),
    );
  }
}
