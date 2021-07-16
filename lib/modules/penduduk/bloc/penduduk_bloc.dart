import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sipandumobile/modules/penduduk/models/pendudukmodels/penduduk_model.dart';
import 'package:sipandumobile/modules/tagging/services/tagging_service.dart';
import 'package:formz/formz.dart';

part 'penduduk_event.dart';
part 'penduduk_state.dart';

class PendudukBloc extends Bloc<PendudukEvent, PendudukState> {
  PendudukBloc() : super(PendudukInitial());

  @override
  Stream<PendudukState> mapEventToState(
    PendudukEvent event,
  ) async* {
    if (event is GetPendudukEvent) {
      yield PendudukLoadingState();

      try {
        final masterpenduduk = await TaggingService().getPenduduk();
        final _masterpenduduk = PendudukModel.fromJson(masterpenduduk.data);
        yield PendudukSucessState(penduduk: _masterpenduduk);
      } catch (e) {
        print(e);
      }
    }
  }
}
