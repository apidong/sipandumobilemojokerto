part of 'penduduk_bloc.dart';

abstract class PendudukState extends Equatable {
  const PendudukState();

  @override
  List<Object> get props => [];
}

class PendudukInitial extends PendudukState {}

class PendudukLoadingState extends PendudukState {}

class PendudukSucessState extends PendudukState {
  final PendudukModel penduduk;
  PendudukSucessState({required this.penduduk});
  // PendudukSucessState copyWith({PendudukModel? penduduk}) {
  //   return PendudukSucessState(penduduk: penduduk ?? this.penduduk);
  // }

  @override
  List<Object> get props => [penduduk];
}
