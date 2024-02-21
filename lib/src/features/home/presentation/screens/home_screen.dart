import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../di/di_setup.dart';
import '../../../features.dart';
import '../bloc/home_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        var bloc = getIt<HomeCubit>();
        return bloc;
      },
      child: Scaffold(
        body: BlocBuilder<HomeCubit, HomeState>(
          builder: (BuildContext context, state) {
            return Center(
              child: TextButton(
                  onPressed: () {
                    context.read<HomeCubit>().getUser();
                  }, child: const Text("Get User")),
            );
          },
        ),
      ),
    );
  }
}
