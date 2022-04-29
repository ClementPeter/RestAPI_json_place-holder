import 'package:flutter/material.dart';
import 'package:rest_api_jsonplaceholder/models/users.dart';
import 'package:rest_api_jsonplaceholder/services/remote_service.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

//
class _UserPageState extends State<UserPage> {
  //List to store post data
  List<User>? user;
  //boolean to trigger if loaded
  var isLoaded = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
    print("ran get Data");
  }

  //function to get Data from API
  getData() async {
    user = await RemoteServices().getUsers();
    if (user != null) {
      setState(() {
        //print("post: $post");
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Visibility(
        visible: isLoaded,
        child: ListView.builder(
          itemCount: user?.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.only(top: 5, bottom: 5, left: 12, right: 12),
              child: Container(
                width: 300,
                height: 250,
                decoration: const BoxDecoration(
                  color: Color(0XFFDDDDDD),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10.0,
                    ),
                    //ID,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        //id
                        const Text(
                          'id : ',
                          style: TextStyle(
                            //fontWeight: FontWeight.,
                            //fontStyle: FontStyle.italic,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          user![index].id.toString(),
                          style: const TextStyle(
                            //fontWeight: FontWeight.,
                            // fontStyle: FontStyle.italic,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                    //Name, Username
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 20.0,
                        ),
                        const Text(
                          'Name : ',
                          style: TextStyle(
                            //fontWeight: FontWeight.,
                            //fontStyle: FontStyle.italic,
                            fontSize: 16.0,
                          ),
                        ),
                        //name
                        Text(
                          user![index].name,
                          style: const TextStyle(
                            //fontWeight: FontWeight.,
                            // fontStyle: FontStyle.italic,
                            fontSize: 16.0,
                          ),
                        ),
                        const SizedBox(
                          width: 40.0,
                        ),
                        //username
                        const Text(
                          'Username : ',
                          style: TextStyle(
                            //fontWeight: FontWeight.,
                            //fontStyle: FontStyle.italic,
                            fontSize: 16.0,
                          ),
                        ),

                        Flexible(
                          child: Text(
                            user![index].username,
                            style: const TextStyle(
                              overflow: TextOverflow.ellipsis,
                              //fontWeight: FontWeight.,
                              //fontStyle: FontStyle.italic,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    //

                    //
                    //Email
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //id
                        const Text(
                          'email : ',
                          style: TextStyle(
                            //fontWeight: FontWeight.,
                            //fontStyle: FontStyle.italic,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          user![index].email,
                          style: const TextStyle(
                            //fontWeight: FontWeight.,
                            //fontStyle: FontStyle.italic,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                    //
                    //Address
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //id
                        const Text(
                          'address : ',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          user![index].address.street,
                          style: const TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),

                        Text(
                          user![index].address.city,
                          style: const TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          user![index].address.suite,
                          style: const TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                    //ZipCode and Coordinates
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          user![index].address.zipcode,
                          style: const TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "lat: ${user![index].address.geo.lat},",
                          //user![index].address.geo.lat,
                          style: const TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "long: ${user![index].address.geo.lng},",
                          //user![index].address.geo.lat,
                          style: const TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                      ],
                    ),

                    const SizedBox(
                      height: 20.0,
                    ),
                    //
                    //phone number
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'phone : ',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          user![index].phone,
                          style: const TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    //Website
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //id
                        const Text(
                          'website : ',
                          style: TextStyle(
                            //fontWeight: FontWeight.,
                            //fontStyle: FontStyle.italic,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          user![index].website,
                          style: const TextStyle(
                            //fontWeight: FontWeight.,
                            //fontStyle: FontStyle.italic,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                    //Company
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //id
                        const Text(
                          'Company : ',
                          style: TextStyle(
                            //fontWeight: FontWeight.,
                            //fontStyle: FontStyle.italic,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          user![index].company.name,
                          style: const TextStyle(
                            //fontWeight: FontWeight.,
                            //fontStyle: FontStyle.italic,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                    //Company description
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Text(
                            "${user![index].company.catchPhrase} ${user![index].company.bs} ",
                            style: const TextStyle(
                           
                              fontSize: 16.0,
                            ),
                          ),
                        ),  
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        replacement: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Loading Users from API'),
              SizedBox(height: 10.0),
              CircularProgressIndicator()
            ],
          ),
        ),
      ),
    );
  }
}
