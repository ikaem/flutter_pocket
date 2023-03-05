import 'package:equatable/equatable.dart';

class CounterCubitState extends Equatable {
  const CounterCubitState({
    required this.count,
  });

  final int count;

  @override
  // TODO: implement props
  List<Object?> get props => [count];
}
