part of 'music_list_bloc.dart';

@immutable
sealed class MusicListEvent {}

class GetMusicLibraryEvent extends MusicListEvent {}

class SearchMusicEvent extends MusicListEvent {
  final String searchQuery;
  SearchMusicEvent({required this.searchQuery});
}
