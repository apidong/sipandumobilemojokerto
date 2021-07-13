import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'sasaran_event.dart';
part 'sasaran_state.dart';

class SasaranBloc extends Bloc<SasaranEvent, SasaranState> {
  SasaranBloc() : super(SasaranInitial());

  @override
  Stream<SasaranState> mapEventToState(
    SasaranEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
