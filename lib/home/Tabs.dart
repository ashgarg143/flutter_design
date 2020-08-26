import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_design/home/TabEvents.dart';

import 'TabPosts.dart';

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> with SingleTickerProviderStateMixin {
  var _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
        body: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                color: Colors.white,
                child: TabBar(
                  controller: _tabController,
                  isScrollable: true,
                  indicatorColor: Colors.blue,
                  labelColor: Colors.blue,
                  unselectedLabelColor: Colors.black54,
                  tabs: [
                    TabItem(icon: Icons.ac_unit, text: "Posts"),
                    TabItem(
                      icon: Icons.event,
                      text: "Events",
                    ),
                    TabItem(
                      icon: Icons.people,
                      text: "Connect",
                    )
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    //PostsScreen()
                    Posts(),
                    Events(),
                    Center(child: Text("Hello friends connect with me!")),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TabItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const TabItem({
    Key key,
    this.icon,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        child: Row(
          children: [
            Icon(icon),
            SizedBox(
              width: 8,
            ),
            Text(text, style: TextStyle(fontSize: 17))
          ],
        ),
      ),
    );
  }
}
