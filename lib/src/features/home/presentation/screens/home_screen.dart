import 'package:eks_khedamtresan/src/features/home/domain/user_entity.dart';
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
        body: BlocListener<HomeCubit, HomeState>(
          listener: (BuildContext context, Object? state) {
          },
          child: BlocBuilder<HomeCubit, HomeState>(
            builder: (BuildContext context, HomeState state) {
              return state.whenOrNull(
                loading: () {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                successful: (UserEntity userEntity) {
                  return Center(
                    child: Text(userEntity.mobileNumber!),
                  );
                  },
                error: (errorMessage) {
                  return Center(
                    child: Text(errorMessage),
                  );
                }
              ) ?? TextButton(
                  onPressed: () {
                    context.read<HomeCubit>().getUser();
                  },
                  child: const Text('Clicked!!'));
            },
          ),
        ),
      ),
    );
  }
}
