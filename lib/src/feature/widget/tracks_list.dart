import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:spotify_ui/src/data/data.dart';
import 'package:spotify_ui/src/provider/provider_app.dart';
import 'package:spotify_ui/src/utils/app_colors.dart';
import 'package:spotify_ui/src/utils/app_text_style.dart';

class TracksList extends StatelessWidget {
  final List<Song> tracks;

  const TracksList({
    Key? key,
    required this.tracks,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      headingTextStyle: AppTextStyle.textStyle14,
      dataRowHeight: 54.0,
      showCheckboxColumn: false,
      columns: const [
        DataColumn(label: Text('TITLE')),
        DataColumn(label: Text('ARTIST')),
        DataColumn(label: Text('ALBUM')),
        DataColumn(label: Icon(Icons.access_time)),
      ],
      rows: tracks.map(
        (e) {
          final selected = context.watch<ProviderApp>().selected?.id == e.id;
          final textStyle = TextStyle(
            color: selected ? AppColors.colorBlue : AppColors.colorWite,
          );
          return DataRow(
            cells: [
              DataCell(
                Text(e.title, style: textStyle),
              ),
              DataCell(
                Text(e.artist, style: textStyle),
              ),
              DataCell(
                Text(e.album, style: textStyle),
              ),
              DataCell(
                Text(e.duration, style: textStyle),
              ),
            ],
            selected: selected,
            onSelectChanged: (_) => context.read<ProviderApp>().selectTrack(e),
          );
        },
      ).toList(),
    );
  }
}
