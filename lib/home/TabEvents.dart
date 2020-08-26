import 'package:flutter/material.dart';

class Events extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top:16.0),
        child: Column(
          children: [
            HorizontalListView(bold: "Your Next Events",light:"View More"),
            /*Container(
              margin: EdgeInsets.only(top:20),
              color: Colors.green,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Your Next Events",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {
                      print("hello");
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        "View More",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54.withOpacity(0.5)),
                      ),
                    ),
                  )
                ],
              ),
            ),*/
            Container(
              margin: EdgeInsets.only(top: 16),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Recommended Events",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: EdgeInsets.only(top:16),
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          itemCount: 8,
                          itemBuilder: (BuildContext context, item){
                            return Container(
                              margin: EdgeInsets.only(bottom:16),
                              width: double.infinity,
                              height: 180,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("assets/images/business.png"),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //Spacer(),
                                    Text("Business Meeting" ,style: TextStyle(fontSize:18,fontWeight: FontWeight.bold)),
                                    SizedBox(height: 2,),
                                    Text("Mon Jan 20, 12:00 pm" ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.5))),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HorizontalListView extends StatelessWidget {
  final String bold;
  final String light;
  const HorizontalListView({
    Key key, this.bold, this.light,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                 bold,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Material(
                  color: Colors.white,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {
                      print("hello");
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        light,
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54.withOpacity(0.5)),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top:16),
              height: 130,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: (BuildContext context, item){
                return Container(
                  margin: EdgeInsets.only(right:16),
                  width: 180,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/business.png"),
                    ),
                  ),
                );
              }),
            )
          ],
        ),
      ),

    );
  }
}
