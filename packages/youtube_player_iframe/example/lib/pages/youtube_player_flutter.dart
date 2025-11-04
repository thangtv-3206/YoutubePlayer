// Copyright 2024 Sarbagya Dhaubanjar. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PlayerFlutter extends StatefulWidget {
  const PlayerFlutter({super.key});

  @override
  State<PlayerFlutter> createState() => _PlayerFlutterState();
}

class _PlayerFlutterState extends State<PlayerFlutter> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'rNGogjwNUyM',
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
    _controller.addListener(_controllerListener);
  }

  void _controllerListener() {
    // Only call methods if the player is confirmed ready
    if (_controller.value.isReady) {
      // Example: Print status when the player is ready and the state changes
      debugPrint('Player State: ${_controller.value.playerState}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Youtube Player Flutter')),
      body: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        progressIndicatorColor: Colors.blueAccent,

        // Optional: Add custom actions when the player is ready
        onReady: () {
          // Can be used to print or confirm readiness
          debugPrint('YouTube Player is ready.');
          _controller.play();
          setState(() {});
        },
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
