import 'package:flutter/material.dart';

import '../data/data.dart';

class ProviderApp extends ChangeNotifier {
  Song? selected;

  void selectTrack(Song track) {
    selected = track;
    notifyListeners();
  }
}
