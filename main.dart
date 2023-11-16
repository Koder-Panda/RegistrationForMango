
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mango/router/router.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyMangoApp(),
    ),
  );
}

class MyMangoApp extends ConsumerWidget {
  const MyMangoApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Mango',
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
    );
  }import 'package:flutter/material.dart';
}
