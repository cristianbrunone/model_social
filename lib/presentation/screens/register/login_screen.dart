import 'package:citas/core/constants/imports.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => context.go(AppRoutes.register),
              child: const Text('Ir para Cadastro'),
            ),
            ElevatedButton(
              onPressed:
                  () => context.go('${AppRoutes.home}/${AppRoutes.tab1}'),
              child: const Text('Entrar no App'),
            ),
          ],
        ),
      ),
    );
  }
}
