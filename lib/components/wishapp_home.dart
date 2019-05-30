import 'package:flutter/material.dart';
import '../data/propertyList.dart';
import '../api/propertyListApi.dart';

// class WishAppHome extends StatefulWidget {
//   const WishAppHome({Key key, this.propertyId}) : super(key: key);

//   final int propertyId;

//   @override
//  _WishAppHomeState createState() => _WishAppHomeState();
// }

class WishAppHome extends StatefulWidget {
  const WishAppHome({Key key}) : super(key: key);
  @override
  _WishAppHomeState createState() => _WishAppHomeState();
}

class _WishAppHomeState extends State<WishAppHome> {
  final Future<Property> property;

  @override
  void initState() {
    super.initState();
    fetchProperties();
  }

  @override
  void dispose() {
    super.dispose();
  }
// use setState to rebuild or refresh the screen or widget by user interaction or duration
// setState((){
//         properties = properties['properties'];
//       });

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
        drawer: Drawer(
          child: new ListView.builder(
              itemCount: properties.length,
              itemBuilder: (BuildContext context, i) {
                if (properties.length != null) {
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
                                  new NetworkImage(properties[i].images[0]),
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
                              new Image.network(properties[i].address),
                              new Container(
                                height: 8.0,
                              ),
                              new Text(
                                properties[i].description,
                                style: new TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              new Text(
                                properties[i].price,
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
                } else {
                  // By default, show a loading spinner
                  return SizedBox(
                    height: MediaQuery.of(context).size.height * 2,
                    child: Align(
                        alignment: Alignment.topCenter,
                        child: CircularProgressIndicator()),
                  );
                }
              }),
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
        ));
  }
}
