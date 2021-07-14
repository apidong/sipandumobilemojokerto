part of 'program_bloc.dart';

abstract class ProgramState extends Equatable {
  const ProgramState();

  @override
  List<Object> get props => [];
}

class ProgramInitial extends ProgramState {}
