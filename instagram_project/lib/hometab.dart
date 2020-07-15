import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:instagram_project/post.dart';
import 'package:instagram_project/story.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  List<Story> stories = [
    Story(
        "https://images.pexels.com/photos/3769021/pexels-photo-3769021.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Jazmin"),
    Story(
        "https://images.pexels.com/photos/4277096/pexels-photo-4277096.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Brian"),
    Story(
        "https://images.pexels.com/photos/936043/pexels-photo-936043.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Sylvester"),
    Story(
        "https://images.pexels.com/photos/2642465/pexels-photo-2642465.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Emily"),
    Story(
        "https://images.pexels.com/photos/3683707/pexels-photo-3683707.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Corrina"),
    Story(
        "https://images.pexels.com/photos/937481/pexels-photo-937481.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Scott"),
    Story(
        "https://images.pexels.com/photos/1977882/pexels-photo-1977882.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Jason"),
    Story(
        "https://images.pexels.com/photos/3984958/pexels-photo-3984958.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
        "Toby_JZ")
  ];

  List<Post> posts = [
    Post(
      username: "Jazmin",
      userImage:
          "https://images.pexels.com/photos/3769021/pexels-photo-3769021.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      postImage:
          "https://images.pexels.com/photos/4529074/pexels-photo-4529074.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      caption: "My Dad's Style Back In The Day",
    ),
    Post(
      username: "Emily",
      userImage:
          "https://images.pexels.com/photos/2642465/pexels-photo-2642465.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      postImage:
          "https://images.pexels.com/photos/4767452/pexels-photo-4767452.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      caption: "capacitor mint green",
    ),
    Post(
      username: "Jason",
      userImage:
          "https://images.pexels.com/photos/1977882/pexels-photo-1977882.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      postImage:
          "https://images.pexels.com/photos/4553618/pexels-photo-4553618.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      caption: "capacitor mint green",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              //Stories
              Container(
                padding: EdgeInsets.symmetric(vertical: 7),
                width: MediaQuery.of(context).size.width,
                height: 95,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  //? Extends to the stories variable data
                  children: stories.map((story) {
                    return Column(
                      children: <Widget>[

                        //Story 
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 7,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70),
                            border: Border.all(
                              width: 3,
                              color: Color(0xFF8e44ad),
                            ),
                          ),

                          child: Container(
                            padding: EdgeInsets.all(
                              2,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(53),
                              child: Image(
                                image: NetworkImage(story.image),
                                width: 52,
                                height: 52,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: 3),
                        Text(story.name),
                      ],
                    );
                  }).toList(),
                ),
              ),

              //Posts
              Container(
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: posts.length,
                  itemBuilder: (ctx, i) {
                    return Container(
                      color: Colors.white,
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(13, 2, 0, 2),

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[

                                Row(
                                  children: <Widget>[
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(35),
                                      child: Image(
                                        image: NetworkImage(
                                          posts[i].userImage,
                                        ),
                                        width: 30,
                                        height: 30,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(width: 9),
                                    Text(
                                      posts[i].username,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),

                                IconButton(
                                  icon: Icon(SimpleLineIcons.options_vertical),
                                  onPressed: () {},
                                  iconSize: 15,
                                ),

                              ],
                            ),
                          ),

                          Image(
                            image: NetworkImage(
                              posts[i].postImage,
                            ),
                            width: MediaQuery.of(context).size.width,
                          ),

                          //Buttons
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(FontAwesome.heart_o),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(FontAwesome.comment_o),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(FontAwesome.send_o),
                                  ),
                                ],
                              ),

                              IconButton(
                                onPressed: () {},
                                icon: Icon(FontAwesome.bookmark_o),
                              ),
                              
                            ],
                          ),

                          //Liked By
                          Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.symmetric(
                                horizontal: 13, vertical: 0),
                            child: RichText(
                              softWrap: true,
                              overflow: TextOverflow.visible,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Liked by ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "Sigmund,",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "Yessenia,",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "Dayana,",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " and",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " 1236 Others",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          //Caption
                          Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.symmetric(
                                horizontal: 12, vertical: 5),
                            child: RichText(
                              softWrap: true,
                              overflow: TextOverflow.visible,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: posts[i].username,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " ${posts[i].caption}",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          //Post Date
                          Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: 14,
                            ),
                            alignment: Alignment.topLeft,
                            child: Text(
                              "February 2020",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[600],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
