import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'database_provider.g.dart';

/*
@riverpod
DatabaseHelper databaseHelper (DatabaseHelperRef ref) {
  return  DatabaseHelper();
}

 */

@riverpod
Future<bool> isFavourite(IsFavouriteRef ref, int recipeId) async {
  return false;
}
