import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:musicplayer/config/api_url.dart';
import 'package:musicplayer/model/music_model.dart';

class Repository {
  Dio dio = Dio();

  Future<List<MusicListModel>> getMusicList() async {
    List<MusicListModel> musicList = [];

    final response = await dio.get(
      ApiUrl.lookupID + ApiUrl.toofanID,
    );

    final responseData = json.decode(response.data);
    debugPrint(responseData['results'].toString());
    for (var element in (responseData["results"] as List)) {
      musicList.add(
        MusicListModel.fromJson(element),
      );
    }
    return musicList;
  }
}
