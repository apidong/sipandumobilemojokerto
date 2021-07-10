part of 'tagging_bloc.dart';

abstract class TaggingEvent extends Equatable {
  const TaggingEvent();

  @override
  List<Object> get props => [];
}

class DataPenduduk extends TaggingEvent {
  final penduduk;

  DataPenduduk(this.penduduk);

  @override
  List<Object> get props => [penduduk];
}
