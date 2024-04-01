import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musicplayer/controller/music_list/music_list_bloc.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<MusicListBloc>(context).add(GetMusicLibraryEvent());
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "♫♫ Enjoy Your Music ♫♫",
          style: TextStyle(
            fontSize: 12,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.greenAccent,
      ),
      body: SingleChildScrollView(
        child: BlocBuilder<MusicListBloc, MusicListState>(
          builder: (context, state) {
            if (state is MusicListInitial) {
              debugPrint("#####. MusicListInitial #######");
            }

            if (state is MusicListLoading) {
              debugPrint("#####. MusicListLoading #######");
            }
            if (state is MusicListSuccess) {
              debugPrint("#####. MusicList. Sucesss #######");
              return Column(
                children: List.generate(state.musicList.length,
                    (index) => Text(state.musicList[index].artistName ?? "")),
              );
            }
            if (state is MusicListFailed) {
              debugPrint("#####. MusicListFailed #######");
            }

            return const CupertinoActivityIndicator();
          },
        ),
      ),
    );
  }
}
