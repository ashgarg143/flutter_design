import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'FavouritesScreen.dart';
import 'home/HomeScreen.dart';
import 'NavBarItem.dart';
import 'ProfileScreen.dart';

class BottomNavBar extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    return Consumer<NavBarNotifier>(
      builder: (context,navBar,child) => BottomNavigationBar(
        backgroundColor: Colors.white,
          items:List.generate(
                navBar.navItems.length, (index) => _buildNavBarItem(navBar.navItems[index])),
        currentIndex: navBar.selectedIndex,
        onTap: (index){
            print("nav index:  $index");
            navBar.updateIndex(index);
            /*Navigator.push(context, MaterialPageRoute(
                builder: (context)=> navBar.navItems[navBar.selectedIndex].des));*/
        },

      ),
    );
  }

  BottomNavigationBarItem _buildNavBarItem(NavBarItem item) {
    return BottomNavigationBarItem(
      icon: Icon(item.icon),
      title: Text(item.title)
    );
  }
}

class NavBarNotifier extends ChangeNotifier{
  int selectedIndex = 0;

  void updateIndex(int index){
    print("selected index in updateIndex: $selectedIndex");
    selectedIndex = index;
    print("selected index in updateIndex after update: $selectedIndex");
    notifyListeners();
  }

  final navItems = <NavBarItem>[
    NavBarItem(
        id: 1,
        icon: Icons.home,
        title: "Home",
        des: HomeScreen()
    ),
    NavBarItem(
        id: 2,
        icon: Icons.favorite,
        title: "Favorites",
        des: FavoritesScreen()
    ),
    NavBarItem(
        id: 3,
        icon: Icons.tag_faces,
        title: "Profile",
        des: ProfileScreen()
    ),
  ];
}


