


class Product {
  final int productId;
  final String description;
  final String postedBy;
  final String viewedBy;
  final String location;
  final String datePosted;
  final List<String> images;
  final String price;
  final String verified;
  final List<String> wishedBy;
  final List<String> wishedTo;
  final List<String> specifications;

  

  Product({
      this.productId,
      this.description,
      this.postedBy,
      this.viewedBy,
      this.location,
      this.datePosted,
      this.images,
      this.price,
      this.verified,
      this.wishedBy,
      this.wishedTo,
      this.specifications
  });

   factory Product.fromJson(Map<List, dynamic> products) {
    return Product(
        productId: products['productId'],
        description: products['description'],
        postedBy: products['postedBy'],
        viewedBy: products['viewedBy'],
        location: products['location'],
        datePosted: products['datePosted'],
        images: products['images'],
        price: products['price'],
        verified: products['verified'],
        wishedBy: products['wishedBy'],
        specifications: products['specifications']
        ); 
  } 

  /* var products = data.map((products) =>
    Product(
        productId: products['productId'],
        description: products['description'],
        postedBy: products['postedBy'],
        viewedBy: products['viewedBy'],
        location: products['location'],
        datePosted: products['datePosted'],
        images: products['images'],
        price: products['price'],
        verified: products['verified'],
        wishedBy: products['wishedBy'],
        wishedTo: products['wishedTo'],
        specifications: products['specifications']
        )
  ).toList(); */
}
