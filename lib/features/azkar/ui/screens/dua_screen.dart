import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sabeel_app/features/azkar/logic/azkar_cubit.dart';
import 'package:sabeel_app/features/azkar/logic/azkar_states.dart';
import 'package:sabeel_app/features/azkar/ui/widgets/card_of_dua.dart';

class DuaScreen extends StatelessWidget{
  const DuaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<AzkarCubit>().loadDua();
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<AzkarCubit,AzkarState>(
          builder: (context, state){
            return state.maybeWhen(
              loading: () => Center(child: CircularProgressIndicator()),
              duaSuccess: (dua) => CustomScrollView(
                slivers: [
                  SliverGrid(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.7,
                    ),
                    delegate: SliverChildBuilderDelegate((BuildContext context, int index) => CardOfDua(index: index, azkar: dua,),
                      childCount: dua.length,
                    ),
                  ),
                ],
              ),
              duaError: (errorMessage) => Center(child: Text(errorMessage)),
              orElse: () {
                return const SizedBox.shrink();
              },
            );
          },
        ),
      ),
    );
  }
}
