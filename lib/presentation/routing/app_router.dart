import 'package:citas/core/constants/imports.dart';
import 'package:citas/presentation/screens/home/tabs/tab2/tab2Details.dart';
part 'app_router.g.dart';

@riverpod
GoRouter goRouter(Ref ref) {
  return GoRouter(
    initialLocation: '/login',
    routes: [
      /// Login
      GoRoute(path: '/login', builder: (_, __) => const LoginScreen()),

      /// Register Flow
      GoRoute(
        path: '/register',
        builder: (_, __) => const RegisterStep1Screen(),
        routes: [
          GoRoute(
            path: 'step2', // Vai resolver para /register/step2
            builder: (_, __) => const RegisterStep2Screen(),
          ),
          GoRoute(
            path: 'step3', // Vai resolver para /register/step3
            builder: (_, __) => const RegisterStep3Screen(),
          ),
        ],
      ),

      /// Home com ShellRoute + BottomNav
      ShellRoute(
        builder: (context, state, child) => HomeShell(child: child),
        routes: [
          GoRoute(
            path: '/home/tab1',
            builder: (_, __) => const Tab1Screen(),
            routes: [
              GoRoute(
                path: 'detail/:id',
                builder: (context, state) {
                  final id = state.pathParameters['id']!;
                  return Tab1DetailScreen(id: id);
                },
              ),
            ],
          ),
          GoRoute(
            path: '/home/tab2',
            builder: (_, __) => const Tab2Screen(),
            routes: [
              GoRoute(
                path: 'detail/:id',
                builder: (context, state) {
                  final id = state.pathParameters['id']!;
                  return Tab2DetailScreen(id: id);
                },
              ),
            ],
          ),
          GoRoute(path: '/home/tab3', builder: (_, __) => const Tab3Screen()),
          GoRoute(path: '/home/tab4', builder: (_, __) => const Tab4Screen()),
        ],
      ),
    ],
  );
}
