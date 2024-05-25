
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fetchingapi/navigation/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class Profile extends ConsumerWidget{
  const Profile({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: SafeArea(
        child: Column(
          children: [

            Row(
              children: [
                Icon(Icons.person),
                Text('Username'),
              ],
            ),


            OutlinedButton.icon(
                onPressed: (){
                  context.router.push(UserRecipies());

            }, icon: Icon(Icons.folder),
                label: Text('My recipies'))
          ],

        ),
      ),
    );
  }

}