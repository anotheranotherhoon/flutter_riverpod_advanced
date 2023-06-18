import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'code_generation_provider.g.dart';

// 1) 어떤 Provider를 사용할지 결정할 고민 할 필요 없도록
// Provider, FutureProvider, StreamProvider(x)
// 2) Parameter > Family

final _testProvider = Provider<String>((ref) => 'Hello Code Generation');

@riverpod
String gState(GStateRef ref) {
  return 'Hello Code Generation';
}

@riverpod
Future<int> gStateFuture(GStateFutureRef ref) async {
  Future.delayed(Duration(seconds: 10));

  return 10;
}

@Riverpod(keepAlive: true)
Future<int> gStateFuture2(GStateFuture2Ref ref) async {
  Future.delayed(Duration(seconds: 10));

  return 10;
}

class Parameter {
  final int number1;
  final int number2;
  Parameter({
    required this.number1,
    required this.number2,
  });
}

final _testFamilyProvider = Provider.family<int, Parameter>(
  (ref, parameter) => parameter.number1 * parameter.number2,
);

@riverpod
class GStateNotifier extends _$GStateNotifier {
  @override
  int build() {
    return 0;
  }

  increment() {
    state++;
  }

  decrement() {
    state--;
  }
}