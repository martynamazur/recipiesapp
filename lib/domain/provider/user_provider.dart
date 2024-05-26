import 'package:fetchingapi/domain/repositories/user_repository.dart';
import 'package:fetchingapi/main.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:fetchingapi/model/user.dart' ;


part 'user_provider.g.dart';

@riverpod
UserRepository userRepository (UserRepositoryRef ref) {
  return UserRepository();
}



