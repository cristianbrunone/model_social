import 'package:citas/core/constants/imports.dart';
import 'package:citas/presentation/screens/home/tabs/tab2/tab2Details.dart';
part 'app_router.g.dart';

@riverpod
GoRouter goRouter(Ref ref) {
  return GoRouter(
    initialLocation: AppRoutes.login,
    routes: [
      GoRoute(
        path: AppRoutes.login,
        builder: (_, __) => const LoginScreen(),
      ),
      GoRoute(
        path: AppRoutes.register,
        builder: (_, __) => const RegisterStep1Screen(),
        routes: [
          GoRoute(
            path: AppRoutes.registerStep2,
            builder: (_, __) => const RegisterStep2Screen(),
          ),
          GoRoute(
            path: AppRoutes.registerStep3,
            builder: (_, __) => const RegisterStep3Screen(),
          ),
        ],
      ),

      ShellRoute(
        builder: (context, state, child) => HomeShell(child: child),
        routes: [
          GoRoute(
            path: AppRoutes.home,
            redirect: (_, __) => '${AppRoutes.home}/${AppRoutes.tab1}',
            routes: [
              GoRoute(
                path: AppRoutes.tab1,
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
                path: AppRoutes.tab2,
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
              GoRoute(
                path: AppRoutes.tab3,
                builder: (_, __) => const Tab3Screen(),
              ),
              GoRoute(
                path: AppRoutes.tab4,
                builder: (_, __) => const Tab4Screen(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
