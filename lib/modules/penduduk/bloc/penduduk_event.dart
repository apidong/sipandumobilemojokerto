part of 'penduduk_bloc.dart';

abstract class PendudukEvent extends Equatable {
  const PendudukEvent();

  @override
  List<Object> get props => [];
}

class GetPendudukEvent extends PendudukEvent {}
