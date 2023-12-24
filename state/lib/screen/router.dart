import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:state/moveScreen2.dart';
import 'package:state/screen/new_page.dart';

void main() {
  runApp(
    MaterialApp.router(
      routerConfig: GoRouter(
        initialLocation: '/',
        routes: [
          GoRoute(path: '/', name: 'home', builder: (context, state) => const HomeWidget()),
          GoRoute(path: '/new1', name: 'new1', builder: (context, state) => const NewPage()),
          GoRoute(path: '/new2', name: 'new2', builder: (context, state) => const NewPage2()),
        ]
      ),
    )
  );
}