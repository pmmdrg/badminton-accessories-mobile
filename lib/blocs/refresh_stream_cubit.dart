import 'package:flutter/material.dart';

class RefreshStreamCubit extends ChangeNotifier {
  RefreshStreamCubit(Stream stream) {
    stream.listen((_) {
      notifyListeners();
    });
  }
}
