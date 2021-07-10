import 'dart:async';
import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:get/get.dart';

part 'tagging_event.dart';
part 'tagging_state.dart';

class TaggingBloc extends Bloc<TaggingEvent, TaggingState> {
  TaggingBloc() : super(TaggingInitial());

  @override
  Stream<TaggingState> mapEventToState(
    TaggingEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
