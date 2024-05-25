import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// to determine whetever there is already data displaying on the screen
final searchStatus = StateProvider<bool>((ref) {
  return false;
});

final searchPhrase = StateProvider<String>((ref) {
  return "";
});


