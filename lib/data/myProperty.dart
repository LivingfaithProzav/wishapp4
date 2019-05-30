import 'package:uuid/uuid.dart';

class MyProperty {
  final Uuid propertyId;
  final String description;
  final String address;
  final String postedBy;
  final String viewedBy;
  final String location;
  final DateTime datePosted;
  final List<String> images;
  final String price;
  final String verified;
  final List<String> wishedBy;
  final List<String> wishedTo;
  final List<String> specifications;

  MyProperty(
      {this.propertyId,
      this.description,
      this.address,
      this.postedBy,
      this.viewedBy,
      this.location,
      this.datePosted,
      this.images,
      this.price,
      this.verified,
      this.wishedBy,
      this.wishedTo,
      this.specifications});

  factory MyProperty.fromJson(Map<String, dynamic> properties) {
    return MyProperty(
        propertyId: properties['propertyId'],
        description: properties['description'],
        address: properties['address'],
        postedBy: properties['postedBy'],
        viewedBy: properties['viewedBy'],
        location: properties['location'],
        datePosted: properties[new DateTime.now()],
        images: properties['images'],
        price: properties['price'],
        verified: properties['verified'],
        wishedBy: properties['wishedBy'],
        specifications: properties["specifications"]);
  }

  MyProperty myProperty = MyProperty(
      propertyId: new Uuid(),
      description: 'A two bedroom bungalow',
      address: '18 Aso Drive, Maitama, Abuja',
      postedBy: 'Mark Ochoga',
      viewedBy: '67 persons',
      location: 'Maitama, Abuja',
      datePosted: new DateTime.now(),
      images: [
        "/assets/images/property1.jpg",
        "/assets/images/property2.jpg",
        "/assets/images/property3.jpg",
        "/assets/images/property4.jpg"
      ],
      price: 'N23000000',
      verified: 'verified',
      wishedBy: ['wishedBy'],
      specifications: [
        "two self-conatined BQ",
        "perimeter fencing",
        " painted interior and exteriors",
        "wall of trees",
        "standby Lister-Generator"
      ]);

  //var myProperties = data.where((property) => property["postedBy"] == "userName");

  /* var properties = data.map((properties) =>
    Property(
        propertyId: properties['propertyId'],
        description: properties['description'],
        address: properties['address'],
        postedBy: properties['postedBy'],
        viewedBy: properties['viewedBy'],
        location: properties['location'],
        datePosted: properties['datePosted'],
        images: properties['images'],
        price: properties['price'],
        verified: properties['verified'],
        wishedBy: properties['wishedBy'],
        wishedTo: properties['wishedTo'],
        specifications: properties['specifications']
        )
  ).toList(); */
}
