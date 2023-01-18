import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logo_e_learning/src/const/colors.dart';
import 'package:logo_e_learning/src/const/kwidgets.dart';
import 'package:logo_e_learning/src/ui/pages/homepage/widgets/rating_stars.dart';
import 'package:logo_e_learning/src/ui/pages/view_course/view_course.dart';

class GridViewCard extends StatelessWidget {
  GridViewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size1 = MediaQuery.of(context).size.height;
    return Container(
      decoration:  BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomRight,
        colors: [Colors.white, Colors.blue.shade200],
      )),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: GridView.count(
      //    physics: ,
          mainAxisSpacing: 1,
          childAspectRatio: 2/2.7,
          crossAxisSpacing: 1,
          shrinkWrap: true,
          crossAxisCount: 2,
          children: List.generate(10, (index) => const MAincard()),
        ),
      ),
    );
  }
}

class MAincard extends StatelessWidget {
  const MAincard({super.key});

  @override
  Widget build(BuildContext context) {
     final size1=MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewCourses(),));

      },
      child: Card(
       clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),),
        child: Container(
        
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(12)),
              color: Colors.grey.shade300,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: size1* 0.17,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          "https://blog.logrocket.com/wp-content/uploads/2021/06/Building-card-widget-Flutter.jpg",
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                SizedBox(
                  height:size1 * 0.01,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Ktext(text: "Full Flutter course", color: kblack, size: size1*0.016),
                      Row(
                        children:  [
                          Text("5.5"),
                          SizedBox(
                            width: 6,
                          ),
                          Stars(),
                          Expanded(
                              child: Ktext(
                                  text: "(2000)",
                                  color:Colors.grey,
                                  size: size1*0.014))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children:  [
                            Text(
                              '₹490',
                              style: TextStyle(
                                  fontSize:size1*0.0175,
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              ' ₹600',
                              style: TextStyle(
                                  fontSize:size1*0.0165,
                                  decoration: TextDecoration.lineThrough,
                                  color: Colors.grey),
                            ),
                          ]),
                          // SizedBox(width: MediaQuery.of(context).size.width*0.035,),
                          Container(
                            child: Row(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      CupertinoIcons.heart,
                                      size: 27,
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(right: 7),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        CupertinoIcons.shopping_cart,
                                        size: 27,
                                      )),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}