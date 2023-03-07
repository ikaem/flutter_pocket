import 'package:equatable/equatable.dart';

class CounterBlocState extends Equatable {
  const CounterBlocState({
    required this.count,
  });

  final int count;

  @override
  // TODO: implement props
  List<Object?> get props => [count];
}
