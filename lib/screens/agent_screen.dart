import 'package:flutter/material.dart';
import 'package:wishapp/components/agent_list.dart';
import 'package:wishapp/components/carousel_ready.dart';
import 'package:wishapp/components/home_list.dart';


class Agent extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prozav -Agent',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AgentTabbedPage(),
    );
  }
}

class AgentTabbedPage extends StatefulWidget {
  const AgentTabbedPage({ Key key }) : super(key: key);
  @override
  _AgentTabbedPageState createState() => _AgentTabbedPageState();
}

class _AgentTabbedPageState extends State<AgentTabbedPage> with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'PROPERTIES'),
    Tab(text: 'AGENTS'),

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
      bottomNavigationBar: new Container(
        color: Colors.white,
        height: 50.0,
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            new IconButton(
              icon: Icon(Icons.home,),
              onPressed: (){},
            ),
            new IconButton(
              icon: Icon(Icons.search,),
              onPressed: null,
            ),
            new IconButton(
              icon: Icon(Icons.add_box,),
              onPressed: null,
            ),
            new IconButton(
              icon: Icon(Icons.favorite,),
              onPressed: null,
            ),
            new IconButton(
              icon: Icon(Icons.account_box,),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
