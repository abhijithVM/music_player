import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:musicplayer/model/music_model.dart';
import 'package:musicplayer/model/repository.dart';

part 'music_list_event.dart';
part 'music_list_state.dart';

class MusicListBloc extends Bloc<MusicListEvent, MusicListState> {
  Repository repository = Repository();
  MusicListBloc() : super(MusicListInitial()) {
    on<MusicListEvent>((event, emit) async {
      if (event is GetMusicLibraryEvent) {
        debugPrint("${event.toString()}++++");
        final result = await repository.getMusicList();

        emit(MusicListSuccess(result));
      } else if (event is SearchMusicEvent) {}
    });
  }
}
