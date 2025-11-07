import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forms_app/presentation/blocs/counter_cubit/counter_cubit.dart';
import 'package:forms_app/presentation/screens/screens.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
    GoRoute(
      path: '/cubit_counter',
      builder: (BuildContext context, GoRouterState state) {
        return BlocProvider(
          create: (_) => CounterCubit(),
          child: const CubitCounterScreen(),
        );
      },
    ),
  ],
);