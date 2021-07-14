import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'package:sipandumobile/modules/tagging/models/masterpenduduk/tagging.dart';
import 'package:sipandumobile/modules/tagging/services/tagging_service.dart';

part 'tagging_event.dart';
part 'tagging_state.dart';

class TaggingBloc extends Bloc<TaggingEvent, TaggingState> {
  // TaggingBloc() : super(TaggingInitial());
  TaggingBloc() : super(TaggingInitial());

  @override
  Stream<TaggingState> mapEventToState(
    TaggingEvent event,
  ) async* {
    yield TaggingLoading();
    if (event is GetPenduduk) {
      print('cek event');
      print(event);
      print(event is GetPenduduk);
      try {
        final masterpenduduk = await TaggingService().getPenduduk();
        print('ini bloc');
        // print(Tagging.fromJson(masterpendudk));
        final _masterpenduduk = Tagging.fromJson(masterpenduduk.data);
        print('ini bloc2');
        // print(masterpendudk);
        print(TaggingLoaded(_masterpenduduk));
        yield TaggingLoaded(_masterpenduduk);
      } catch (e) {
        print(e);
      }
    }
  }
}
