import 'package:uuid/uuid.dart';

class Mortgagee {
  final Uuid firmId;
  final String description;
  final String address;
  final String postedBy;
  final String location;
  final DateTime datePosted;
  final String logoImage;
  final String duration;
  final String interestRate;
  final String verified;
  final List<String> wishedBy;
  final List<String> wishedTo;
  final List<String> specifications;

  Mortgagee(
      {this.firmId,
      this.description,
      this.address,
      this.postedBy,
      this.location,
      this.datePosted,
      this.logoImage,
      this.duration,
      this.interestRate,
      this.verified,
      this.wishedBy,
      this.wishedTo,
      this.specifications});

  factory Mortgagee.fromJson(Map<String, dynamic> mortgagees) {
    return Mortgagee(
        firmId: mortgagees['firmId'],
        description: mortgagees['description'],
        address: mortgagees['address'],
        postedBy: mortgagees['postedBy'],
        location: mortgagees['location'],
        datePosted: mortgagees[new DateTime.now()],
        logoImage: mortgagees['logoImage'],
        duration: mortgagees['duration'],
        interestRate: mortgagees['interestRate'],
        verified: mortgagees['verified'],
        wishedBy: mortgagees['wishedBy'],
        specifications: mortgagees['specifications']);
  }

  Mortgagee mortgagee = Mortgagee(
      firmId: new Uuid(),
      description: 'A two bedroom bungalow',
      address: '18 Aso Drive, Maitama, Abuja',
      postedBy: 'Mark Ochoga',
      location: 'Maitama, Abuja',
      datePosted: new DateTime.now(),
      logoImage: "/assets/images/property1.jpg",
      duration: '20 years',
      interestRate: '15%',
      verified: 'verified',
      wishedBy: [
        'wishedBy'
      ],
      specifications: [
        "two self-conatined BQ",
        "perimeter fencing",
        " painted interior and exteriors",
        "wall of trees",
        "standby Lister-Generator"
      ]);

  /* var mortgagees = data.map((mortgagees) =>
    Property(
        propertyId: mortgagees['propertyId'],
        description: mortgagees['description'],
        address: mortgagees['address'],
        postedBy: mortgagees['postedBy'],
        viewedBy: mortgagees['viewedBy'],
        location: mortgagees['location'],
        datePosted: mortgagees['datePosted'],
        images: mortgagees['images'],
        price: mortgagees['price'],
        verified: mortgagees['verified'],
        wishedBy: mortgagees['wishedBy'],
        wishedTo: mortgagees['wishedTo'],
        specifications: mortgagees['specifications']
        )
  ).toList(); */
}
