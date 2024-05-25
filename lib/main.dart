import 'package:fetchingapi/presentation/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'app_states/nav_state/bottombar.dart';
import 'navigation/app_router.dart';

const supabaseUrl = 'https://xgvlevhtwrkakdvbloiy.supabase.co';


void main() async{
  //getIt.registerSingleton<AppRouter>(AppRouter());
  await dotenv.load(fileName: ".env");
  String supabaseKey = dotenv.env['SUPABASE_KEY']!;
  await Supabase.initialize(url: supabaseUrl, anonKey: supabaseKey);
  runApp(const ProviderScope(child: MyApp()));

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //switch to DI
    final _appRouter = AppRouter();
    //final _appRouter = getIt<AppRouter>();
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      //routerDelegate: _appRouter.delegate(),
      //routeInformationParser: _appRouter.defaultRouteParser(),

    );
  }
}

