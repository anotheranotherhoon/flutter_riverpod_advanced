import 'package:flutter/material.dart';
import 'package:flutter_prac_river/layout/default_layout.dart';
import 'package:flutter_prac_river/riverpod/family_modifier_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FamilyModifierSceen extends ConsumerWidget {
  const FamilyModifierSceen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(familyModifierProvider(10));
    return DefaultLayout(
      title: 'FamilyModifierScreen',
      body: Center(
          child: state.when(
              data: (data) => Text(data.toString()),
              error: (err, stack) => Text(err.toString()),
              loading: () => const CircularProgressIndicator())),
    );
  }
}
