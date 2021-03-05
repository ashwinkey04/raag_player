import 'dart:async';

import 'package:flutter/services.dart';
import 'package:meta/meta.dart';

class MusicItem {
  final String id;
  final String url;
  final String artistName;
  final String albumName;
  final String trackName;
  final String coverUrl;
  final Duration duration;

  /// If [id] is omitted, the [url] will be used as id.
  MusicItem({
    String? id,
    required String url,
    required this.trackName,
    required this.artistName,
    required this.albumName,
    required this.duration,
    required this.coverUrl,
  })  : this.id = id ?? url,
        this.url = url;
}

class RaagPlayer {
  static const MethodChannel _channel =
      const MethodChannel('raag_player');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
