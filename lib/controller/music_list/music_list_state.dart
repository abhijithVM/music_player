part of 'music_list_bloc.dart';

@immutable
sealed class MusicListState {}

class MusicListInitial extends MusicListState {}

class MusicListLoading extends MusicListState {}

class MusicListSuccess extends MusicListState {
  final List<MusicListModel> musicList;

  MusicListSuccess(this.musicList);
}

class MusicListFailed extends MusicListState {}
