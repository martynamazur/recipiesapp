import 'package:fetchingapi/model/user.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../main.dart';

class UserRepository{
  //final SupabaseClient _client;

  //UserRepository(this._client);

  Future<void> addUser(AppUser user) async {

    final response = await supabase
        .from('users').insert(user);

    if (response.error != null) {
      throw response.error!;
    }
  }

  Future<void> signUp(String password, String email, String name) async {
    await supabase.auth.signUp(
      password: password,
      email: email,
      data: {'name': name});
  }
}