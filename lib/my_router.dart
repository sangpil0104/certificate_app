import 'package:go_router/go_router.dart';
import 'package:hello_world_practice/certificate_list_page.dart';
import 'package:hello_world_practice/main_page.dart';
import 'certificate_information_page.dart';
import 'landing_page.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => LandingPage(),
    ),
    GoRoute(
      path: '/certificate_main',
      builder: (context, state) {
        return MainPage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'certificate_list',
          builder: (context, state) {
            return CertificateListPage();
          },
          routes: <RouteBase>[
            GoRoute(
              path: 'certificate_info',
              builder: (context, state) {
                return CertificateInformationPage();
              },
            ),
          ],
        ),
      ],
    ),
  ],
);
