import 'package:flutter/material.dart';
import 'package:wishapp/components/agent_list.dart';
import 'package:wishapp/components/carousel_ready.dart';
import 'package:wishapp/components/home_list.dart';

class UserTabbedPage extends StatefulWidget {
  const UserTabbedPage({ Key key }) : super(key: key);
  @override
  _UserTabbedPageState createState() => _UserTabbedPageState();
}

class _UserTabbedPageState extends State<UserTabbedPage> with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'PROPERTIES'),
    Tab(text: 'AGENTS'),
    Tab (text: 'Carousel')
  ];

  TabController _tabController;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prozav - Agent'),
        bottom: TabBar(
          controller: _tabController,
          tabs: myTabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [FirstPropData(),
        FirstAgentData(), Carousel()],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add,),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),
      ),
    );
  }
}
