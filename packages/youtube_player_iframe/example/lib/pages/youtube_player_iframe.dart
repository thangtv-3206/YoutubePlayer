// Copyright 2024 Sarbagya Dhaubanjar. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class PlayerIframe extends StatefulWidget {
  const PlayerIframe({super.key});

  @override
  State<PlayerIframe> createState() => _PlayerIframeState();
}

class _PlayerIframeState extends State<PlayerIframe> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    const videoId = 'rNGogjwNUyM';
    _controller = YoutubePlayerController(
      params: const YoutubePlayerParams(
        origin: 'https://www.youtube-nocookie.com',
        showFullscreenButton: false,
      ),
      key: videoId,
      onWebResourceError: (error) {
        print(
            'thang: onWebResourceError: code:${error.errorCode} || descriptions:${error.description} || errorType:${error.errorType}');
      },
    );
    _controller.loadVideoById(videoId: videoId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Youtube Player Iframe')),
      body: YoutubePlayer(
        controller: _controller,
      ),
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }
}
