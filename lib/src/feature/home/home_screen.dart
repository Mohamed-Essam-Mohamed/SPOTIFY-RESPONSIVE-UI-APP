import 'package:flutter/material.dart';
import 'package:spotify_ui/src/data/data.dart';
import 'package:spotify_ui/src/feature/playlist/play_list_screen.dart';
import 'package:spotify_ui/src/feature/widget/current_track.dart';
import 'package:spotify_ui/src/feature/widget/side_menu.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "HomeScreen";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                if (MediaQuery.of(context).size.width > 800) const SideMenu(),
                const Expanded(
                  child: PlaylistScreen(playlist: lofihiphopPlaylist),
                ),
              ],
            ),
          ),
          CurrentTrack(),
        ],
      ),
    );
  }
}
