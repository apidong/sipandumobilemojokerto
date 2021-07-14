part of 'tagging_bloc.dart';

class TaggingState extends Equatable {
  const TaggingState();
  // var penduduk;
  @override
  List<Object> get props => [];
}

class TaggingInitial extends TaggingState {
  const TaggingInitial();

  @override
  List<Object> get props => [];
}

class TaggingLoaded extends TaggingState {
  final Tagging penduduk;

  TaggingLoaded(this.penduduk);

  @override
  List<Object> get props => [penduduk];
}

class TaggingLoading extends TaggingState {
  TaggingLoading();

  @override
  List<Object> get props => [];
}

class TaggingError extends TaggingState {}
