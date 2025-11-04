// Copyright 2024 Sarbagya Dhaubanjar. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:go_router/go_router.dart';
import 'package:youtube_player_iframe_example/pages/home_page.dart';
import 'package:youtube_player_iframe_example/pages/youtube_player_flutter.dart';
import 'package:youtube_player_iframe_example/pages/youtube_player_iframe.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (_, __) => const HomePage(),
      routes: [
        GoRoute(
          path: 'home',
          pageBuilder: (_, GoRouterState state) {
            return NoTransitionPage(
              child: HomePage(),
            );
          },
        ),
        GoRoute(
          path: 'youtube_player_iframe',
          pageBuilder: (_, GoRouterState state) {
            return NoTransitionPage(
              child: PlayerIframe(),
            );
          },
        ),
        GoRoute(
          path: 'youtube_player_flutter',
          pageBuilder: (_, GoRouterState state) {
            return NoTransitionPage(
              child: PlayerFlutter(),
            );
          },
        ),
      ],
    ),
  ],
);
