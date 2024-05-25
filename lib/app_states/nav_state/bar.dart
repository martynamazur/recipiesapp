import 'package:auto_route/auto_route.dart';
import 'package:fetchingapi/navigation/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fetchingapi/app_states/nav_state/nav_provider.dart';

import '../../domain/provider/app_route_provider.dart';
import '../../navigation/app_router.dart';
import '../../presentation/favourite.dart';
import '../../presentation/search.dart';

class Bar extends ConsumerWidget {
  Bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(appRouterProvider);
    final navIndex = ref.watch(navProvider);

    return AutoTabsScaffold(
      routes: [
        /*
        HomeRoute(),
        SearchRoute(),
        FavouriteRoute(),

         */
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorite',
            ),
          ],
          currentIndex: tabsRouter.activeIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.green,
          onTap: (index) {
            tabsRouter.setActiveIndex(index);
          },
        );
      },
    );
  }

}
