import 'package:flutter/material.dart';
import 'package:my_ui2/HomePage.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});
  static const String routeName = '/secondPage';

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                color: Colors.indigo[800],
              )
            ],
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed:() =>   Navigator.pushNamed(context, HomeScreen.routeName),
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 18, top: 40, bottom: 30),
                  child: Text(
                    "Mountain \nPackages",
                    style: TextStyle(fontSize: 35, color: Colors.white),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 250,
                                margin: const EdgeInsets.all(20),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network('https://media.gettyimages.com/id/1185397615/photo/taking-their-date-to-the-top-of-the-mountain.jpg?s=612x612&w=gi&k=20&c=FbQKlE_3z86dgaEJ9KZ2b28KZehoEvr1-MpVF3fkGkw=',fit: BoxFit.cover),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text(
                                  'Trekking',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 18),
                                child: Row(
                                  children: [
                                    Icon(
                                      color: Colors.amberAccent,
                                      Icons.location_on,
                                    ),
                                    Text(
                                      'Tours + Hotel',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.grey),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 250,
                                margin: const EdgeInsets.all(20),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network('https://media.istockphoto.com/id/1060529042/de/foto/junge-frau-mit-hund.jpg?s=2048x2048&w=is&k=20&c=PU23uzIDdx9s8l3SOrVlbzLXi5wqc69X8TNwC11xea8=',fit: BoxFit.cover),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text(
                                  'Solo Trip',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),

                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 20, bottom: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      'Sort by',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ),
                                    Text(
                                      'Price',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.amber),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.arrow_downward,
                                  size: 28,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 250,
                                margin: const EdgeInsets.all(20),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network('https://media.istockphoto.com/id/1532511962/photo/camping-by-the-sea-at-dusk-bonfire-beach-sunset-photography-background.jpg?s=1024x1024&w=is&k=20&c=jXA14IDod5QEUFcQGneBtGiBm9qf2BEbMo6HBbPRMwc=',fit: BoxFit.cover),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text(
                                  'Camping ',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 18),
                                child: Row(
                                  children: [
                                    Icon(
                                      color: Colors.amberAccent,
                                      Icons.location_on,
                                    ),
                                    Text(
                                      'Tours + Transportation',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.grey),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 250,
                                margin: const EdgeInsets.all(20),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network('https://media.istockphoto.com/id/1067423744/de/foto/f%C3%BCnf-junge-erwachsene-freunde-sitzen-hautnah-im-gespr%C3%A4ch-auf-dem-gipfel-nach-einer-bergtour.jpg?s=2048x2048&w=is&k=20&c=-_XreRewKoI_rqCEnjWYTrjCDGfmD6NcmnJFCQKvAMI=',fit: BoxFit.cover),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text(
                                  'Friends ',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),

                            ],
                          ),

                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
