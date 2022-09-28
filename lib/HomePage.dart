import 'package:flutter/material.dart';
import 'package:nft_ui_app/components/glass_box.dart';
import 'package:nft_ui_app/components/my_appbar.dart';
import 'package:nft_ui_app/components/my_bottombar.dart';
import 'package:nft_ui_app/components/my_tabBar.dart';
import 'package:nft_ui_app/tabs/recent_tab.dart';
import 'package:nft_ui_app/tabs/top_tab.dart';
import 'package:nft_ui_app/tabs/trending_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentBottomIndex = 0;
  void _searchTapped() {}
  List tabOptions = [
    ['Recent', RecentTab()],
    ['Trending', TrendingTab()],
    ['Top', TopTab()],
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabOptions.length,
      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.grey[300],
        bottomNavigationBar: GlassBox(
          child: MyBottomBar(
            index: _currentBottomIndex,
            onTap: (index) {
              setState(() {
                _currentBottomIndex = index!;
              });
            },
          ),
        ),
        body: ListView(children: [
          MyAppBar(title: 'Explore Collections', onSearchTap: _searchTapped),
          SizedBox(
            height: 600,
            child: MyTabBar(tabOptions: tabOptions),
          )
        ]),
      ),
    );
  }
}
