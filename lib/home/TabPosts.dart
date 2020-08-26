import 'package:flutter/material.dart';
import 'package:flutter_design/home/TabEvents.dart';

class Posts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 16),
        child: Column(
          children: [
            Container(
              height: 60,
              margin: EdgeInsets.only(bottom: 16),
              padding: EdgeInsets.all(20),
              color: Colors.white,
              child: TextField(
                style: TextStyle(fontSize: 17),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 8),
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.add,color: Colors.grey,),
                  hintText: "Whats on your mind?"
                ),
              ),
            ),
            HorizontalListView(bold:"Recommended",light:"See all"),
            Container(
              color: Colors.white,
              margin: EdgeInsets.only(top:16,bottom: 16),
              padding: EdgeInsets.only(top:20,right:20,left: 20,bottom: 12),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage("assets/images/marketing.png"),
                      ),
                      SizedBox(width: 15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hello XYZ!",
                            style: TextStyle(fontSize: 16,
                                 fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: [
                              Text(
                                "@xyza",
                                style: TextStyle(color: Colors.black54),
                              ),
                              SizedBox(width: 10,),
                              Text(
                                "15 min ago",
                                style: TextStyle(color: Colors.black54),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:8.0,right:16),
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                      maxLines: 2,
                      semanticsLabel: "hello",
                      style: TextStyle(height: 1.4),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 16),
                    height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          image: AssetImage("assets/images/marketing.png"),
                          fit: BoxFit.cover
                        )
                        )
                      ),
                  Row(
                    children: [
                      TextLikes(no: 123,text: "likes",),
                      TextLikes(no: 25,text: "comments",),
                      TextLikes(no: 8,text: "shares",),
                    ],
                  ),
                  SizedBox(height: 16,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /*ListTile(leading: Icon(Icons.share),title: Text("lkkk"),),
                      ListTile(leading: Icon(Icons.share),title: Text("lkkk"),),
                      ListTile(leading: Icon(Icons.share),title: Text("lkkk"),),*/
                      LikeTitle(icon:Icons.favorite,title:"Like"),
                      LikeTitle(icon:Icons.comment,title:"Comment"),
                      LikeTitle(icon:Icons.share,title:"Share")
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LikeTitle extends StatelessWidget {
  final IconData icon;
  final String title;
  const LikeTitle({
    Key key, this.icon, this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: (){},
        /*splashColor: Colors.yellow,
        highlightColor: Colors.green,*/
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
              children: [
              Icon(icon,color: Colors.grey,),
              SizedBox(width: 10,),
              Text(title,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),)
            ],
          ),
        ),
      ),
    );
  }
}

class TextLikes extends StatelessWidget {
  final int no;
  final String text;
  const TextLikes({
    Key key, this.no, this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          no.toString(),
          style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey),
        ),
        SizedBox(width: 2,),
        Text(
          text,
          style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey),
        ),
        SizedBox(width: 20,)
      ],
    );
  }
}
