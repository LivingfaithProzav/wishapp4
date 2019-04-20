import 'package:flutter/material.dart';
import 'package:wishapp/screens/agent_screen.dart';

class FirstPropData extends StatefulWidget {
  @override
  FirstPropDataState createState() => new FirstPropDataState();
}

class FirstPropDataState extends State <FirstPropData>{
  // final String url = "https://database.com;
  // List data

  final List _firstPropData = [{
    'image': 'assets/images/property1.jpg',
    'description': 'House at Abuja',
    'address': '18, Aso Drive, Maitama, Abuja',
    'price': 'N20,000,000',
    'postedBy': 'Mark Ochoga',
    'status': 'available',
    'verified': 'yes',
    'datePosted': 'DateTime(2019, 4, 2)'
  },
  {
    'image': 'assets/images/property1.jpg',
    'description': 'House at Abuja',
    'address': '18, Aso Drive, Maitama, Abuja',
    'price': 'N20,000,000',
    'postedBy': 'Mark Ochoga',
    'status': 'available',
    'verified': 'yes',
    'datePosted': 'DateTime(2019, 4, 2)'
  },
  {
    'image': 'assets/images/property1.jpg',
    'description': 'House at Abuja',
    'address': '18, Aso Drive, Maitama, Abuja',
    'price': 'N20,000,000',
    'postedBy': 'Mark Ochoga',
    'status': 'available',
    'verified': 'yes',
    'datePosted': 'DateTime(2019, 4, 2)'
  },
  {
    'image': 'assets/images/property1.jpg',
    'description': 'House at Abuja',
    'address': '18, Aso Drive, Maitama, Abuja',
    'price': 'N20,000,000',
    'postedBy': 'Mark Ochoga',
    'status': 'available',
    'verified': 'yes',
    'datePosted': 'DateTime(2019, 4, 2)'
  },
  {
    'image': 'assets/images/property1.jpg',
    'description': 'House at Abuja',
    'address': '18, Aso Drive, Maitama, Abuja',
    'price': 'N20,000,000',
    'postedBy': 'Mark Ochoga',
    'status': 'available',
    'verified': 'yes',
    'datePosted': '2019, 4, 2'
  }
  ]; //initializing now

//FirstPropData(this.firstPropData); //Initializing from later code within

@override
void initState(){
  super.initState();
  //this._firstPropData;
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
  // data = convertDataToJson['_firstPropData];
  // });
  // return 'success';
// }

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: _firstPropData == null ? 0 : _firstPropData.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          child: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
         children: <Widget>[
           
           Image.asset(_firstPropData[index]['image']),
           Text(_firstPropData[index]['description']),
           Text(_firstPropData[index]['address']),
           Text(_firstPropData[index]['price']),
              RaisedButton(
                onPressed: ()
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Agent()),
                  );
                },
                textColor: Colors.white,
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  child: Text(_firstPropData[index]['postedBy']),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[Colors.red, Colors.green, Colors.blue],
                    ),


                  ),

                ),
              ),
          ],

        )
        )
        );
      },
    );

  }
}
