import 'package:flutter/material.dart';
import 'package:wishapp/widgets/selected_photo.dart';

class CarouselPending extends StatefulWidget {
  @override
  CarouselState createState() => new CarouselState();
}

class CarouselState extends State <CarouselPending>{
  // final String url = "https://database.com;
  // List data
  int photoIndex= 0;
   List<String> _carousel = [
    'assets/images/property1.jpg',
     'assets/images/property6.jpg',
    'assets/images/property7.jpg',
    'assets/images/property8.jpg',
    'assets/images/property9.jpg',
    'assets/images/property12.jpg',

  ]; //initializing now

//FirstAgentData(this.firstAgentData); //Initializing from later code within


  void _previousPhoto(){
    setState(){
      return photoIndex = photoIndex > 0 ? photoIndex - 1 : 0;
    }
  }

  void _nextPhoto(){
    setState()=> photoIndex = photoIndex < _carousel.length - 1 ? photoIndex + 1 : photoIndex;
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
    return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                    child: Stack(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          image: DecorationImage(image:AssetImage(_carousel[photoIndex]),
                          fit:BoxFit.cover)
                    ),
                    height: 400.0,
                    width: 300.0,

                    ),
                    Positioned(
                    top: 375.0,
                    left: 25.0,
                    right:25.0,
                    child: SelectedPhoto(numberOfDots: _carousel.length, photoIndex: photoIndex),
                    )


                  ],

                ),
    ),
    Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
    child: Text('Next'),
    onPressed: _nextPhoto,
    elevation: 5.0,
    color: Colors.green,
    ),
    SizedBox(width:10.0),
    RaisedButton(
        elevation: 5.0,
        child: Text('Prev'),
    onPressed: _previousPhoto,
    color: Colors.blue,
    ),
    ]

                    )
    ]
    );

  }
}
