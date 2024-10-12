import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:belanja/pages/home_page.dart';
import 'package:belanja/pages/item_page.dart';
import 'package:belanja/models/item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Mengatur GoRouter dengan rute untuk halaman utama dan item detail
    final GoRouter _router = GoRouter(
      initialLocation: '/',
      routes: [
        // Route untuk halaman HomePage
        GoRoute(
          path: '/',
          builder: (context, state) => const HomePage(),
        ),
        // Route untuk halaman ItemPage
        GoRoute(
          path: '/item',
          builder: (context, state) {
            // Mengambil item yang dipassing melalui parameter extra
            final item = state.extra as Item;
            return ItemPage(item: item);
          },
        ),
      ],
    );

    return MaterialApp.router(
      title: 'Triyana Dewi Fatmawati | 2241720206',
      routerConfig: _router,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
