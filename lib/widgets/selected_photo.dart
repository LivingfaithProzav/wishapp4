import 'package:flutter/material.dart';

class SelectedPhoto extends StatelessWidget {
  final int numberOfDots;
  final int photoIndex;

  SelectedPhoto({this.numberOfDots, this.photoIndex});

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
        children: _buildDots(),
      )

    );
  }

  Widget _inactivePhoto() {
    return new Container(
        child: new Padding(
          padding: const EdgeInsets.only(left: 3.0, right: 3.0),
          child: Container(
            height: 8.0,
            width: 8.0,
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(4.0)
            ),
          ),
        )
    );
  }

  Widget _activePhoto() {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 5.0, right: 5.0),
        child: Container(
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 2.0)
                ],

          ),
          height: 10.0,
          width: 10.0,
        ),
      ),
    );
  }


  List <Widget> _buildDots() {
    List<Widget> dots = [];
    for (int i = 0; 1 < numberOfDots; ++ i) {
      dots.add(
          i == photoIndex ? _activePhoto() : _inactivePhoto()
      );
    }
    return dots;
  }

}
