import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sabeel_app/features/hadith/logic/cubit/hadith_cubit.dart';
import 'package:sabeel_app/features/hadith/ui/widgets/hadith_card.dart';

class HadithListView extends StatelessWidget {
  const HadithListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HadithCubit, HadithState>(
      builder: (context, state) {
        return state.maybeWhen(
          hadithLoading: () => Center(child: CircularProgressIndicator()),
          hadithSuccess: (hadithList) {
            if (hadithList.isNotEmpty) {
              return ListView.builder(
                itemCount: hadithList.length,
                itemBuilder: (context, index) {
                  final hadith = hadithList[index];
                  return HadithCard(
                    hadithArabic: hadith.hadithArabic,
                    bookSlug: hadith.bookSlug,
                    status: hadith.status,
                  );
                },
              );
            } else {
              return Center(child: Text('No Hadiths available.'));
            }
          },
          hadithError: (errorHandler) => Center(child: Text('Error')),
          orElse: () => Center(child: Text('يرجى الإنتظار')),
        );
      },
    );
  }
}
