import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:sipandumobile/modules/tagging/models/masterpenduduk/tagging.dart';
import 'package:sipandumobile/modules/tagging/services/tagging_service.dart';

part 'tagging_event.dart';
part 'tagging_state.dart';

class TaggingBloc extends Bloc<TaggingEvent, TaggingState> {
  TaggingBloc() : super(TaggingInitial());

  @override
  Stream<TaggingState> mapEventToState(
    TaggingEvent event,
  ) async* {
    if (event is GetPenduduk) {
      try {
        final masterpendudk = await TaggingService().getPenduduk();

        final _masterpenduduk = Tagging.fromJson(masterpendudk);
        print(_masterpenduduk);
        print('ini bloc');
        yield TaggingLoaded(masterpendudk);
      } catch (e) {}
    }
  }
}
