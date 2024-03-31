import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'music_list_event.dart';
part 'music_list_state.dart';

class MusicListBloc extends Bloc<MusicListEvent, MusicListState> {
  MusicListBloc() : super(MusicListInitial()) {
    on<MusicListEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
