
import 'package:auto_route/annotations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter/material.dart';

import '../app_states/nav_state/bottombar.dart';

@RoutePage()
class Favourite extends ConsumerWidget{
  const Favourite({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('Favourite page')
          ],
        ),
      ),

    );
  }
}
