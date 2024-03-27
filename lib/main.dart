import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tab_bar/Fragment/AlarmFragment.dart';
import 'package:tab_bar/Fragment/BalanceFragment.dart';
import 'package:tab_bar/Fragment/ContactFragment.dart';
import 'package:tab_bar/Fragment/EmailFragment.dart';
import 'package:tab_bar/Fragment/HomeFragment.dart';
import 'package:tab_bar/Fragment/PersonFragment.dart.dart';
import 'package:tab_bar/Fragment/SearchFragment.dart';
import 'package:tab_bar/Fragment/SettingFragment.dart';

main(){
  runApp(myApp());
}
class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'This part is tab bar part ',
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      darkTheme: ThemeData(primarySwatch: Colors.amber),
      color: Colors.cyanAccent,
      home: HomeActivity(),
    );
  }

}
class HomeActivity extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
        length: 8,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.cyan,
            title: Text("My app"),
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                Tab(icon: Icon(Icons.home),text: 'Home',),
                Tab(icon: Icon(Icons.search),text: 'Search',),
                Tab(icon: Icon(Icons.settings),text: 'Setting',),
                Tab(icon: Icon(Icons.email),text: 'Email',),
                Tab(icon: Icon(Icons.contact_mail),text: 'Contact',),
                Tab(icon: Icon(Icons.person),text: 'Person',),
                Tab(icon: Icon(Icons.access_alarm),text: 'Alarm',),
                Tab(icon: Icon(Icons.account_balance),text: 'Balance',),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              HomeFragment(),
              SearchFragment(),
              SettingFragment(),
              EmailFragment(),
              ContactFragment(),
              PersonFragment(),
              AlarmFragment(),
              BalanceFragment(),

            ],
          ),
        )
    );
  }

}