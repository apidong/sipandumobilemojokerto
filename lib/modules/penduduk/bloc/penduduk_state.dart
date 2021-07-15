part of 'penduduk_bloc.dart';

abstract class PendudukState extends Equatable {
  const PendudukState();

  @override
  List<Object> get props => [];
}

class PendudukInitial extends PendudukState {
  @override
  List<Object> get props => [];
}

class PendudukLoadingState extends PendudukState {
  @override
  List<Object> get props => [];
}

class PendudukSucessState extends PendudukState {
  final PendudukModel penduduk;
  PendudukSucessState({required this.penduduk});
  PendudukSucessState copyWith({PendudukModel? penduduk}) {
    return PendudukSucessState(penduduk: penduduk ?? this.penduduk);
  }

  @override
  List<Object> get props => [penduduk];
}
