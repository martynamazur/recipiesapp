import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fetchingapi/app_states/nav_state/nav_provider.dart';
import 'package:fetchingapi/presentation/home_page.dart';
import '../../domain/provider/app_route_provider.dart';
import '../../navigation/app_router.dart';
import '../../presentation/favourite.dart';
import '../../presentation/search.dart';

class BottomBar extends ConsumerWidget {
   BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(appRouterProvider);
    final navIndex = ref.watch(navProvider);

    return Scaffold(
      body: _widgetOptions.elementAt(navIndex.index),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
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
        currentIndex: navIndex.index,
        selectedItemColor: Colors.amber[800],
        onTap: (index) {},
      ),
    );
  }
/*
  void _onTabTapped(AppRouter appRouter, int index) {
    switch (index) {
      case 0:
        appRouter.push(HomeRoute());
        break;
      case 1:
        appRouter.push(SearchRoute()); // Ensure SearchRoute is accessible
        break;
      case 2:
        appRouter.push(FavouriteRoute());
        break;
    }
  }

 */

  // Define _widgetOptions here to make it accessible
  List<Widget> _widgetOptions = <Widget>[Home(), Search(), Favourite()];
}
