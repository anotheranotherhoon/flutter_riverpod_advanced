import 'package:flutter/material.dart';
import 'package:flutter_prac_river/layout/default_layout.dart';
import 'package:flutter_prac_river/riverpod/code_generation_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CodeGenerationScreen extends ConsumerWidget {
  const CodeGenerationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultLayout(
      title: 'CodeGenerationScreen',
      body: Column(
        children: [
          Consumer(builder: (context, ref, child) {
            final state1 = ref.watch(gStateProvider);
            return Text('State1 : $state1');
          }),
          Consumer(builder: (context, ref, child) {
            final state2 = ref.watch(gStateFutureProvider);
            return state2.when(
              data: (data) {
                return Text(
                  'State2 :  $data',
                  textAlign: TextAlign.center,
                );
              },
              error: (err, stack) => Text(
                err.toString(),
              ),
              loading: () => Center(child: CircularProgressIndicator()),
            );
          }),
          Consumer(builder: (context, ref, child) {
            final state3 = ref.watch(gStateFuture2Provider);
            return state3.when(
              data: (data) {
                return Text(
                  'State3 :  $data',
                  textAlign: TextAlign.center,
                );
              },
              error: (err, stack) => Text(
                err.toString(),
              ),
              loading: () => Center(child: CircularProgressIndicator()),
            );
          }),
          Consumer(
              builder: (context, ref, child) {
                final state5 = ref.watch(gStateNotifierProvider);
                return Column(
                  children: [Text('State5 : $state5'), child!],
                );
              },
              child: Row(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        ref.read(gStateNotifierProvider.notifier).increment();
                      },
                      child: Text('incre')),
                  ElevatedButton(
                      onPressed: () {
                        ref.read(gStateNotifierProvider.notifier).decrement();
                      },
                      child: Text('decre')),
                  ElevatedButton(
                      onPressed: () {
                        ref.invalidate(gStateNotifierProvider);
                      },
                      child: Text('Invalidate'))
                ],
              )),
        ],
      ),
    );
  }
}
