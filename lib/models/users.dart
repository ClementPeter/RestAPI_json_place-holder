// // To parse this JSON data, do
// //
// //     final user = userFromJson(jsonString);

// import 'dart:convert';

// class User {
//   User({
//     required this.id,
//     required this.name,
//     required this.username,
//     required this.email,
//     //required this.address,
//     required this.phone,
//     required this.website,
//     //required this.company,
//   });

//   int id;
//   String name;
//   String username;
//   String email;
//   //JsonCodec address;
//   String phone;
//   String website;
//   //String company;

//   factory User.fromJson(Map<String, dynamic> json) => User(
//         id: json["id"],
//         name: json["name"],
//         username: json["username"],
//         email: json["email"],
//         //address: json["address"],
//         phone: json["phone"],
//         website: json["website"],
//         //company: json["company"],
//       );

//   // Map<String, dynamic> toJson() => {
//   //     "id": id,
//   //     "name": name,
//   //     "username": username,
//   //     "email": email,
//   //     "address": address,
//   //     "phone": phone,
//   //     "website": website,
//   //     "company": company,
//   // };

// }

// List<User> userFromJson(String str) =>
//     List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

//       //String userToJson(List<User> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));




// // class Address {
// //     Address({
// //         required this.street,
// //         required this.suite,
// //         required this.city,
// //         required  this.zipcode,
    
// //     });

// //     String street;
// //     String suite;
// //     String city;
// //     String zipcode;
// //     double geo;

// //     factory Address.fromJson(Map<String, dynamic> json) => Address(
// //         street: json["street"],
// //         suite: json["suite"],
// //         city: json["city"],
// //         zipcode: json["zipcode"],
// //         geo: json["geo"]["lat"]["lng"],
// //     );

// //     Map<String, dynamic> toJson() => {
// //         "street": street,
// //         "suite": suite,
// //         "city": city,
// //         "zipcode": zipcode,
// //         "geo": geo.toJson(),
// //     };
// // }

// // class Geo {
// //     Geo({
// //         this.lat,
// //         this.lng,
// //     });

// //     String lat;
// //     String lng;

// //     factory Geo.fromJson(Map<String, dynamic> json) => Geo(
// //         lat: json["lat"],
// //         lng: json["lng"],
// //     );

// //     Map<String, dynamic> toJson() => {
// //         "lat": lat,
// //         "lng": lng,
// //     };
// // }

// // class Company {
// //     Company({
// //         this.name,
// //         this.catchPhrase,
// //         this.bs,
// //     });

// //     String name;
// //     String catchPhrase;
// //     String bs;

// //     factory Company.fromJson(Map<String, dynamic> json) => Company(
// //         name: json["name"],
// //         catchPhrase: json["catchPhrase"],
// //         bs: json["bs"],
// //     );

// //     Map<String, dynamic> toJson() => {
// //         "name": name,
// //         "catchPhrase": catchPhrase,
// //         "bs": bs,
// //     };
// // }