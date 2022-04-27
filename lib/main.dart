import 'package:bloc_tutorial/app/routes/routes.dart';
import 'package:bloc_tutorial/domain/cubit/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_bloc_providers.dart';

void main() {
  runApp(const Core());
}

class Lava extends StatelessWidget {
  final AppRouter router;
  const Lava({required this.router});

  @override
  Widget build(BuildContext context) {
    ThemeCubit themeCubit = BlocProvider.of<ThemeCubit>(context, listen: true);
    bool isDark = themeCubit.isDark;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: isDark ? ThemeData.dark() : ThemeData.light(),
      initialRoute: "/home",
      onGenerateRoute: router.generateRoute,
    );
  }
}
