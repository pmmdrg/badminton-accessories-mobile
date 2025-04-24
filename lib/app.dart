import 'package:badminton_accessories_shop/blocs/auth_cubit/auth_cubit.dart';
import 'package:badminton_accessories_shop/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final Routes _routes;
  late final AuthCubit _authCubit;

  @override
  void initState() {
    super.initState();

    _routes = Routes(_authCubit);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _authCubit,
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: _routes.router,
        ),
      ),
    );
  }
}
