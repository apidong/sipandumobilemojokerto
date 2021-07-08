part of 'tagging_bloc.dart';

abstract class TaggingState extends Equatable {
  const TaggingState();
  
  @override
  List<Object> get props => [];
}

class TaggingInitial extends TaggingState {}
