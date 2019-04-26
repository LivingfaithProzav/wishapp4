import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class WishAppHome extends StatefulWidget {
  const WishAppHome({Key key}) : super(key: key);
  @override
  _WishAppHomeState createState() => _WishAppHomeState();
}

class _WishAppHomeState extends State<WishAppHome> {
  var _isLoading = true;
  final String url = 'http://my-json-server.typicode.com/LivingfaithProzav/wishapp/properties';
  List properties;

  @override
  void initState() {
    super.initState();
    this.getJsonData();
  }

  Future<String> getJsonData() async {
    var response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});
    print(response.body);

    setState(() {
      var convertDataToJson = json.decode(response.body);
      properties = convertDataToJson['properties'];
    });
    return "success";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WishApp'),
        elevation: 0.7,
        actions: <Widget>[
          new Icon(Icons.search),
          new Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
          ),
          new Icon(Icons.more_vert)
        ],
      ),
      body: new Center(
        child: _isLoading
            ? new CircularProgressIndicator()
            : new ListView.builder(
                itemCount: this.properties != null ? this.properties.length : 0,
                itemBuilder: (BuildContext context, i) {
                  final property = this.properties[i];
                  return new Container(
                    child: Column(
                      children: <Widget>[
                        new FlatButton(
                          padding: new EdgeInsets.all(0.0),
                          child: new ListTile(
                            leading: new CircleAvatar(
                              foregroundColor: Theme.of(context).primaryColor,
                              backgroundColor: Colors.grey,
                              backgroundImage:
                                  new NetworkImage(property['postedBy']),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => new Text('data')));
                          },
                        ),
                        new FlatButton(
                          padding: new EdgeInsets.all(0.0),
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Image.network(property['postedBy']),
                              new Container(
                                height: 8.0,
                              ),
                              new Text(
                                property['description'],
                                style: new TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              new Text(
                                property['price'],
                                style: new TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => new Text('data')));
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
      ),
      bottomNavigationBar: new Container(
        color: Colors.white,
        height: 50.0,
        child: new BottomAppBar(
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
      ),
    );
  }
}

class SubDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Sub Detail'),
      ),
      body: new Center(
        child: new Text('SubDetail SubList'),
      ),
    );
  }
}

class PropertyCell extends StatelessWidget {
  final property;
  PropertyCell(this.property);

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Container(
          padding: new EdgeInsets.all(16.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Image.network(property['postedBy']),
              new Container(
                height: 8.0,
              ),
              new Text(
                property['description'],
                style:
                    new TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        new Divider(),
      ],
    );
  }
}
