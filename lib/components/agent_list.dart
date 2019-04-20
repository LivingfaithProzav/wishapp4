import 'package:flutter/material.dart';

class FirstAgentData extends StatefulWidget {
  @override
  FirstAgentDataState createState() => new FirstAgentDataState();
}

class FirstAgentDataState extends State <FirstAgentData>{
  // final String url = "https://database.com;
  // List data

  final List _firstAgentData = [{
    'image': 'assets/images/property3.jpg',
    'description': 'House at Abuja',
    'address': '18, Aso Drive, Maitama, Abuja',
    'price': 'N20,000,000',
    'postedBy': 'Mark Ochoga',
    'status': 'available',
    'verified': 'yes',
    'datePosted': 'DateTime(2019, 4, 2)'
  },
  {
    'image': 'assets/images/property3.jpg',
    'description': 'House at Abuja',
    'address': '18, Aso Drive, Maitama, Abuja',
    'price': 'N20,000,000',
    'postedBy': 'Mark Ochoga',
    'status': 'available',
    'verified': 'yes',
    'datePosted': 'DateTime(2019, 4, 2)'
  },
  {
    'image': 'assets/images/property3.jpg',
    'description': 'House at Abuja',
    'address': '18, Aso Drive, Maitama, Abuja',
    'price': 'N20,000,000',
    'postedBy': 'Mark Ochoga',
    'status': 'available',
    'verified': 'yes',
    'datePosted': 'DateTime(2019, 4, 2)'
  },
  {
    'image': 'assets/images/property3.jpg',
    'description': 'House at Abuja',
    'address': '18, Aso Drive, Maitama, Abuja',
    'price': 'N20,000,000',
    'postedBy': 'Mark Ochoga',
    'status': 'available',
    'verified': 'yes',
    'datePosted': 'DateTime(2019, 4, 2)'
  },
  {
    'image': 'assets/images/property3.jpg',
    'description': 'House at Abuja',
    'address': '18, Aso Drive, Maitama, Abuja',
    'price': 'N20,000,000',
    'postedBy': 'Mark Ochoga',
    'status': 'available',
    'verified': 'yes',
    'datePosted': '2019, 4, 2'
  }
  ]; //initializing now

//FirstAgentData(this.firstAgentData); //Initializing from later code within

  @override
  void initState(){
    super.initState();
    //this._firstAgentData;
    //this.getJsonData();
  }

//Future<String> getJsonData() async{
  // var response = await http.get(
  //  Uri.encodeFull(uri),
  // only accept json response
  // header: {"accept" : " application/json"}

  //);
  // print(response.body);
  // setState((){
  // var convertDataToJson = JSON.decode(response.body);
  // data = convertDataToJson['_firstAgentData];
  // });
  // return 'success';
// }

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: _firstAgentData == null ? 0 : _firstAgentData.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
            child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Image.asset(_firstAgentData[index]['image']),
                    Text(_firstAgentData[index]['description']),
                    Text(_firstAgentData[index]['address']),
                    Text(_firstAgentData[index]['price']),
                    Text(_firstAgentData[index]['postedBy'])
                  ],

                )
            )
        );
      },
    );

  }
}
