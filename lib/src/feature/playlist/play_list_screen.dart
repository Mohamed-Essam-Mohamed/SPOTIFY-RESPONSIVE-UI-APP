import 'package:flutter/material.dart';
import 'package:spotify_ui/src/data/data.dart';
import 'package:spotify_ui/src/feature/widget/play_list_header.dart';
import 'package:spotify_ui/src/feature/widget/tracks_list.dart';
import 'package:spotify_ui/src/utils/app_colors.dart';
import 'package:spotify_ui/src/utils/app_text_style.dart';

class PlaylistScreen extends StatefulWidget {
  final Playlist playlist;

  const PlaylistScreen({
    Key? key,
    required this.playlist,
  }) : super(key: key);

  @override
  _PlaylistScreenState createState() => _PlaylistScreenState();
}

class _PlaylistScreenState extends State<PlaylistScreen> {
  ScrollController? _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 140.0,
        leading: _leadingWidget(),
        actions: [
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.account_circle_outlined,
              size: 30.0,
            ),
            label: Text(
              'Marcus Ng',
              style: AppTextStyle.textStyle14,
            ),
          ),
          const SizedBox(width: 8.0),
          IconButton(
            padding: const EdgeInsets.only(),
            icon: const Icon(
              Icons.keyboard_arrow_down,
              size: 30.0,
            ),
            onPressed: () {},
          ),
          const SizedBox(width: 20.0),
        ],
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.colorRed,
              AppColors.colorBlack,
            ],
            stops: const [0, 0.4],
          ),
        ),
        child: Scrollbar(
          controller: _scrollController,
          child: ListView(
            controller: _scrollController,
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 90.0,
            ),
            children: [
              PlaylistHeader(playlist: widget.playlist),
              TracksList(tracks: widget.playlist.songs),
            ],
          ),
        ),
      ),
    );
  }

  Padding _leadingWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _iconLeadingWidget(),
          const SizedBox(width: 16.0),
          _iconLeadingWidget(),
        ],
      ),
    );
  }

  InkWell _iconLeadingWidget() {
    return InkWell(
      customBorder: const CircleBorder(),
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(6.0),
        decoration: const BoxDecoration(
          color: Colors.black26,
          shape: BoxShape.circle,
        ),
        child: const Icon(Icons.chevron_left, size: 28.0),
      ),
    );
  }
}
