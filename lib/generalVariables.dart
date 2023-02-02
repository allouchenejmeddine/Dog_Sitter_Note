import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:ui' as ui;


final dogOrCat = Provider<String>((ref) {
  return "dog" ;
});

final height = Provider<double>((ref) {
  final window = ui.window;
  final availableHeight = window.physicalSize.height;
  print(availableHeight);
  return availableHeight;
});

final width = Provider<double>((ref) {
  final window = ui.window;
  final availableWidth = window.physicalSize.height;
  print(availableWidth);
  return availableWidth;
});

final passwordObscure = Provider<bool>((ref) {
  return true;
});
