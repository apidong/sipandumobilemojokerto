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

class PendudukLoadingState extends PendudukState {}

class PendudukSucessState extends PendudukState {
  final PendudukModel penduduk;

  PendudukSucessState({required this.penduduk}) {
    print('ini state');
    print(penduduk.data!.toJson());
  }
  @override
  List<Object> get props => [penduduk];
}
