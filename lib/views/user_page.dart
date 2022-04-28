// import 'package:flutter/material.dart';
// import 'package:rest_api_jsonplaceholder/models/users.dart';
// import 'package:rest_api_jsonplaceholder/services/remote_service.dart';

// class UserPage extends StatefulWidget {
//   const UserPage({Key? key}) : super(key: key);

//   @override
//   State<UserPage> createState() => _UserPageState();
// }

// //
// class _UserPageState extends State<UserPage> {
//   //List to store post data
//   List<User>? user;
//   //boolean to trigger if loaded
//   var isLoaded = false;

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     getData();
//     print("ran get Data");
//   }

//   //function to get Data from API
//   getData() async {
//     user = await RemoteServices().getUsers();
//     if (user != null) {
//       setState(() {
//         //print("post: $post");
//         isLoaded = true;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: const Text('Post'),
//       //   centerTitle: true,
//       // ),
//       body: Visibility(
//         visible: isLoaded,
//         child: ListView.builder(
//           itemCount: user?.length,
//           itemBuilder: (context, index) {
//             return Padding(
//               padding:
//                   const EdgeInsets.only(top: 5, bottom: 5, left: 12, right: 12),
//               child: Expanded(
//                 child: Container(
//                   width: 350,
//                   height: 200,
//                   decoration: const BoxDecoration(
//                     color: Color(0XFFDDDDDD),
//                     borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                   ),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: [
//                           //id
//                           Text(
//                             'User ',
//                             style: const TextStyle(
//                               //fontWeight: FontWeight.,
//                               //fontStyle: FontStyle.italic,
//                               fontSize: 14.0,
//                             ),
//                           ),
//                           // Text(
//                           //   user![index].id.toString(),
//                           //   style: const TextStyle(
//                           //     //fontWeight: FontWeight.,
//                           //     //fontStyle: FontStyle.italic,
//                           //     fontSize: 14.0,
//                           //   ),
//                           // ),
//                           const SizedBox(
//                             width: 40.0,
//                           ),
//                           //name
//                           Text(
//                             user![index].name,
//                             style: const TextStyle(
//                               //fontWeight: FontWeight.,
//                               // fontStyle: FontStyle.italic,
//                               fontSize: 14.0,
//                             ),
//                           ),
//                           const SizedBox(
//                             width: 40.0,
//                           ),
//                           //username
//                           Text(
//                             user![index].username,
//                             style: const TextStyle(
//                               //fontWeight: FontWeight.,
//                               //fontStyle: FontStyle.italic,
//                               fontSize: 14.0,
//                             ),
//                           ),
//                           const SizedBox(
//                             width: 10.0,
//                           ),
//                           // CircleAvatar(
//                           //   radius: 24.0,
//                           //   backgroundColor: Colors.grey,
//                           //   child: Text(
//                           //     post![index].id.toString(),
//                           //     style: const TextStyle(color: Colors.black),
//                           //   ),
//                           // ),
//                           // const SizedBox(
//                           //   width: 12.0,
//                           // ),
//                           // Expanded(
//                           //   child: Column(
//                           //     crossAxisAlignment: CrossAxisAlignment.start,
//                           //     children: [
//                           //       Text(
//                           //         post![index].title,
//                           //         maxLines: 2,
//                           //         overflow: TextOverflow.ellipsis,
//                           //         style: const TextStyle(
//                           //           fontWeight: FontWeight.bold,
//                           //           fontSize: 24.0,
//                           //         ),
//                           //       ),
//                           //       Text(
//                           //         post![index].body,
//                           //         style: const TextStyle(
//                           //           //fontWeight: FontWeight.,
//                           //           fontStyle: FontStyle.italic,
//                           //           fontSize: 14.0,
//                           //         ),
//                           //       )
//                           //     ],
//                           //   ),
//                           // )
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//         replacement: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: const [
//               Text('Loading Users from API'),
//               SizedBox(height: 10.0),
//               CircularProgressIndicator()
//             ],
//           ),
//         ),
//         //replacement: const Center(child: CircularProgressIndicator()),
//       ),
//     );
//   }
// }
