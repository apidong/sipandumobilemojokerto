part of 'tagging_bloc.dart';

abstract class TaggingEvent extends Equatable {
  const TaggingEvent();

  @override
  List<Object> get props => [];
}

class GetPenduduk extends TaggingEvent {
  // final penduduk;

  // GetPenduduk({this.penduduk});

  // @override
  // List<Object> get props => [penduduk];
  GetPenduduk();
  @override
  List<Object> get props => [];
}
