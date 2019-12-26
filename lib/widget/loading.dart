import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading {

  ///打开loading
  Widget show() {
    final spinkit = SpinKitFadingCircle(
      color: Colors.red,
    );
    return spinkit;
  }
}
