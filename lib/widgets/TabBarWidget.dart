import 'package:flutter/material.dart';


// ignore: camel_case_types
class meinTabBar extends StatefulWidget {



    const meinTabBar({super.key});



  @override
  State<meinTabBar> createState() => _meinTabBarState();


}
// ignore: camel_case_types
class _meinTabBarState extends State<meinTabBar> with TickerProviderStateMixin  {
     static const List<Tab> myTabs = <Tab>[
    Tab(icon: Icon(Icons.book_rounded),),
    Tab(icon: Icon(Icons.speaker),),
  ];
  late final TabController  meintabController ;


  @override
  void initState() {
    super.initState();
      meintabController= TabController(vsync: this, length: myTabs.length);
  }

 @override
 void dispose() {
   meintabController.dispose();
   super.dispose();
 }

  @override
  Widget build(BuildContext context) {
    return  TabBarView(
        controller: meintabController,
        children: myTabs.map((Tab tab) {
          final String label = tab.text!.toLowerCase();
          return Center(
            child: Text(
              'This is the $label tab',
              style: const TextStyle(fontSize: 36),
            ),
          );
        }).toList(),
      );
    
  }
}