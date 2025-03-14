import 'package:citas/core/constants/imports.dart';

class RegisterStep3Screen extends StatelessWidget {
  const RegisterStep3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cadastro - Passo 3')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.go('${AppRoutes.home}/${AppRoutes.tab1}');
          },
          child: const Text('Finalizar Cadastro e Ir para Home'),
        ),
      ),
    );
  }
}
