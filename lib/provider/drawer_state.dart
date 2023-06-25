import 'package:flutter/material.dart';

class ScaffoldKeyState extends ChangeNotifier {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey<ScaffoldState> get getScffoldKey => _scaffoldKey;

  void openDrawer() {
    _scaffoldKey.currentState!.openDrawer();
  }

  void openEndDrawer() {
    _scaffoldKey.currentState!.openEndDrawer();
  }
}
