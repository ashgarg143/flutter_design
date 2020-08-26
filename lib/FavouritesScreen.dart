import 'package:flutter/material.dart';

import 'BottomNavBar.dart';
import 'categories.dart';

class FavoritesScreen extends StatelessWidget {
  final categories = <Category>[];


  @override
  Widget build(BuildContext context) {
    categories.clear();
    categories.add(Category(
        name: "Marketing",
        noOfCourses: "17",
        image: "assets/images/marketing.png"));

    categories.add(Category(
        name: "Marketing",
        noOfCourses: "17",
        image: "assets/images/marketing.png"));
    categories.add(Category(
        name: "Marketing",
        noOfCourses: "17",
        image: "assets/images/marketing.png"));

    categories.add(Category(
        name: "Marketing",
        noOfCourses: "17",
        image: "assets/images/marketing.png"));
    categories.add(Category(
        name: "Marketing",
        noOfCourses: "17",
        image: "assets/images/marketing.png"));

    categories.add(Category(
        name: "Marketing",
        noOfCourses: "17",
        image: "assets/images/marketing.png"));
    return Scaffold(
      backgroundColor: Colors.white,
      //bottomNavigationBar: BottomNavBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.menu),
                    Spacer(),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/images/business.png"),
                          )),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Hey XYZ!",
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Find a course you want to Learn",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: TextField(
                    style: TextStyle(fontSize: 18),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        fillColor: Color(0xFFF5f5f7),
                        filled: true,
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                        hintText: "Search for a course"),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Categories",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                /*Container(
                  padding: EdgeInsets.all(20),
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage("assets/images/marketing.png"),
                        fit: BoxFit.fill),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        categories[0].name,
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        categories[0].noOfCourses + " Courses",
                        style: TextStyle(
                          color: Colors.black.withOpacity(.5),
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                ),*/
                GridView.count(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    childAspectRatio: 0.8,
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    children: List.generate(categories.length, (index) {
                      return Container(
                          padding: EdgeInsets.all(20
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage("assets/images/marketing.png"),
                                fit: BoxFit.fill),
                          ),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  categories[index].name,
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  categories[index].noOfCourses + " Courses",
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(.5),
                                    fontSize: 14,
                                  ),
                                ),
                              ]));
                    })),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
