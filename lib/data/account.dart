class Account {
  final String username;
  final String firstName;
  final String surName;
  final String address;
  final String gender;
  final String religion;
  final String image;
  final DateTime dateofBirth;
  final String email;
  final String password;
  final String confirmPassword;
  final bool paid;

  Account(
      {this.username,
      this.firstName,
      this.surName,
      this.gender,
      this.address,
      this.dateofBirth,
      this.religion,
      this.email,
      this.password,
      this.confirmPassword,
      this.image,
      this.paid});

  factory Account.fromJson(Map<String, dynamic> account) {
    return Account(
        username: account['username'],
        firstName: account['firstName'],
        surName: account['surName'],
        gender: account['gender'],
        dateofBirth: account[new DateTime.now()],
        religion: account['religion'],
        image: account['image'],
        email: account['email'],
        password: account['password'],
        confirmPassword: account['confirmPassword'],
        paid: account['paid']);
  }

  Account account = Account(
      username: 'A two bedroom bungalow',
      firstName: '18 Aso Drive, Maitama, Abuja',
      surName: 'Mark Ochoga',
      dateofBirth: new DateTime.now(),
      gender: 'male',
      image: "/assets/profiles/img1.jpg",
      religion: 'christian',
      email: 'mike@gmail.com',
      password: 'mike',
      confirmPassword: 'mike',
      address: 'abuja',
      paid: true);
}
