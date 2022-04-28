import 'package:flutter/material.dart';
import 'package:rest_api_jsonplaceholder/models/post.dart';
import 'package:rest_api_jsonplaceholder/services/remote_service.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  State<PostPage> createState() => _PostPageState();
}

//
class _PostPageState extends State<PostPage> {
  //List to store post data
  List<Post>? post;
  //boolean to trigger if loaded
  var isLoaded = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  //function to get Data from API
  getData() async {
    post = await RemoteServices().getPost();
    if (post != null) {
      setState(() {
        //print("post: $post");
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Post'),
      //   centerTitle: true,
      // ),
      body: Visibility(
        visible: isLoaded,
        child: ListView.builder(
          itemCount: post?.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.only(top: 5, bottom: 5, left: 12, right: 12),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0XFFdddddd),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 12.0,
                    ),
                    CircleAvatar(
                      radius: 24.0,
                      backgroundColor: Colors.grey,
                      child: Text(
                        post![index].id.toString(),
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      width: 12.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            post![index].title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0,
                            ),
                          ),
                          Text(
                            post![index].body,
                            style: const TextStyle(
                              //fontWeight: FontWeight.,
                              fontStyle: FontStyle.italic,
                              fontSize: 14.0,
                            ),
                          )
                        ],
                      ),
                    )
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
              Text('Loading Posts from API'),
              SizedBox(height: 10.0),
              CircularProgressIndicator()
            ],
          ),
        ),
        //replacement: const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}