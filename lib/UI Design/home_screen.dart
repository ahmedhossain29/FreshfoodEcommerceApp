import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../style.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: AppColor.appColor,
        title: Text("Home"),
        actions: const [
          Icon(
            Icons.search,
            size: 35,
          ),
          SizedBox(
            width: 20,
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.add_shopping_cart,
              size: 30,
            ),
          )
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              CarouselSlider(
                items: [
                  //1st Image of Slider
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/Capture.JPG"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),

                  //2nd Image of Slider
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/Capture1.JPG"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),

                  //3rd Image of Slider
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/Capture3.JPG"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),

                  //4th Image of Slider
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/Capture4.JPG"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),

                  //5th Image of Slider
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/Capture5.JPG"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],

                //Slider Container properties
                options: CarouselOptions(
                  height: 170,
                  enlargeCenterPage: false,
                  autoPlay: true,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 1,
                ),
              ),
              Container(
                color: AppColor.appColor,
                height: 38,
                child: const Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Icon(
                      Icons.location_on,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "Badda",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    SizedBox(
                      width: 170,
                    ),
                    Icon(
                      Icons.add_location,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 180, top: 10),
                child: Text(
                  "ShodaiMama Offers",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 180,
                  top: 10,
                ),
                child: Container(
                  height: 190,
                  width: 180,
                  child: Column(
                    children: [
                      const Image(
                        image: AssetImage("assets/images/cap6.JPG"),
                        // height: 150,
                        // width: 140,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "সদাইমামা বার-বি-কিউ ফেস্ট",
                          style: TextStyle(
                              color: AppColor.appColor,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        width: 8,
                        height: 70,
                        decoration: ShapeDecoration(
                            color: Color(0xff61A464),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            )),
                      ),
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            "Fresh",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            "গুনগত মান বজায় রা্খার জন্য পচনশীল খাদ্যপন্য\nসরবরাহ করা হয় সকাল ৮-১১ টা পর্যন্ত ।",
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  crossAxisSpacing: 10,
                  //childAspectRatio: (itemWidth / itemHeight),
                  controller: ScrollController(keepScrollOffset: true),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: List<Widget>.generate(10, (index) {
                    return GridTile(
                      header: Container(
                          padding: const EdgeInsets.all(10.0),
                          alignment: Alignment.centerRight,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(5)),
                            height: 20,
                            width: 45,
                            child: const Center(
                              child: Text(
                                "Fresh",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )),
                      child: Card(
                        child: Container(
                          width: 160,
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              const Image(
                                image: AssetImage("assets/images/product1.JPG"),
                                height: 60,
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Text(
                                      "Pineapple Medium",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 25,
                                        ),
                                        Text(
                                          "each",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Text(
                                          "৳ 45",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  width: double.infinity,
                                  color: AppColor.appColor,
                                  height: 33,
                                  child: Center(
                                      child: Text(
                                    "Add To Cart",
                                    style: TextStyle(color: Colors.white),
                                  )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 230),
                    child: Container(
                        margin: const EdgeInsets.all(10.0),
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.grey)),
                        child: Row(
                          children: [
                            Text('Show More'),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 13,
                            )
                          ],
                        )),
                  )
                ],
              ),
              Card(
                elevation: 5,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 65, top: 20),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/cap6.JPG",
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "সদাইমামা বার-বি-কিউ ফেস্ট",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff006A4F),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 105),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              size: 18,
                              color: Color(0xff006A4F),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 230),
                    child: Container(
                        margin: const EdgeInsets.all(10.0),
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.grey)),
                        child: const Row(
                          children: [
                            Text('Show More'),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 13,
                            )
                          ],
                        )),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//Ui Design
