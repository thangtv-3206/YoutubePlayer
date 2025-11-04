// Copyright 2024 Sarbagya Dhaubanjar. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

///
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => context.go('/youtube_player_iframe'),
              child: Text('youtube_player_iframe'),
            ),
            SizedBox(height: 36),
            TextButton(
              onPressed: () => context.go('/youtube_player_flutter'),
              child: Text('youtube_player_flutter'),
            ),
          ],
        ),
      ),
    );
  }
}
