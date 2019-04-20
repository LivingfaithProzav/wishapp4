import 'package:flutter/material.dart';
import 'package:wishapp/components/agent_list.dart';
import 'package:wishapp/components/carousel_ready.dart';
import 'package:wishapp/components/home_list.dart';

class PropertyTabbedPage extends StatefulWidget {
  const PropertyTabbedPage({Key key}) : super(key: key);
  @override
  _PropertyTabbedPageState createState() => _PropertyTabbedPageState();
}

class _PropertyTabbedPageState extends State<PropertyTabbedPage>
    with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'PROPERTIES'),
    Tab(text: 'AGENTS'),
    Tab(text: 'Carousel')
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
        centerTitle: true,
        elevation: 1.0,
        leading: new Icon(Icons.arrow_back),
        title: SizedBox(height: 35.0, child: Text('Prozav')),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Icon(Icons.send),
          )
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: myTabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [FirstPropData(), FirstAgentData(), Carousel()],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0))),
      ),
      bottomNavigationBar: new Container(
        color: Colors.white,
        height: 50.0,
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            new IconButton(
              icon: Icon(
                Icons.home,
              ),
              onPressed: () {},
            ),
            new IconButton(
              icon: Icon(
                Icons.search,
              ),
              onPressed: null,
            ),
            new IconButton(
              icon: Icon(
                Icons.add_box,
              ),
              onPressed: null,
            ),
            new IconButton(
              icon: Icon(
                Icons.favorite,
              ),
              onPressed: null,
            ),
            new IconButton(
              icon: Icon(
                Icons.account_box,
              ),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
