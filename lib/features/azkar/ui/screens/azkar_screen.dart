import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sabeel_app/features/azkar/logic/azkar_cubit.dart';
import 'package:sabeel_app/features/azkar/logic/azkar_states.dart';
import 'package:sabeel_app/features/azkar/ui/widgets/card_of_azkar.dart';

class AzkarScreen extends StatelessWidget{
  const AzkarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<AzkarCubit>().loadAzkar();
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<AzkarCubit,AzkarState>(
          builder: (context, state){
            return state.maybeWhen(
              loading: () => Center(child: CircularProgressIndicator()),
              azkarSuccess: (azkar) => CustomScrollView(
                slivers: [
                  SliverGrid(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.1,
                    ),
                    delegate: SliverChildBuilderDelegate((BuildContext context, int index) => CardOfAzkar(index: index, azkar: azkar,),
                      childCount: azkar.length,
                    ),
                  ),
                ],
              ),
              azkarError: (errorMessage) => Center(child: Text(errorMessage)),
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
