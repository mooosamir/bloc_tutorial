import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/cubit/cubit/theme_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeCubit themeCubit = BlocProvider.of<ThemeCubit>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: BlocListener<ThemeCubit, ThemeState>(
        listener: (context, state) {
          if (state is ThemeDark) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
              ),
            );
          }
          if (state is ThemeLight) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
              ),
            );
          }
        },
        child: BlocBuilder<ThemeCubit, ThemeState>(
          builder: (context, state) {
            return Center(
              child: ElevatedButton(
                  onPressed: () {
                    state.toString();
                    themeCubit.toggleTheme();
                    // print('Hello World!');
                  },
                  child: const Text('Hello World!')),
            );
          },
        ),
      ),
    );
  }
}
