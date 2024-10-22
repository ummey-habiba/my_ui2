
import 'package:flutter/material.dart';
import 'package:my_ui2/second_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String routeName = '/';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int currentButton = 0;


List<String> buttonList1=[
  "https://images.unsplash.com/photo-1481724245097-97eb66ac0371?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1728068169338-f7afa37d0671?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwxNnx8fGVufDB8fHx8fA%3D%3D"];
List<String> buttonList2=[
  "https://media.gettyimages.com/id/583809524/photo/alberta-wilderness-near-banff.jpg?s=612x612&w=gi&k=20&c=SPbKE-7RrCZVpcD3RW1nQ1nIEtQn55BxftMvmIfaZx0=",
  "https://media.gettyimages.com/id/583809524/photo/alberta-wilderness-near-banff.jpg?s=612x612&w=gi&k=20&c=SPbKE-7RrCZVpcD3RW1nQ1nIEtQn55BxftMvmIfaZx0=",
  "https://images.unsplash.com/photo-1551376347-075b0121a65b?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
];
List<String> buttonList3=[
  "https://images.unsplash.com/photo-1727053850611-8351da50cff9?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1727053850611-8351da50cff9?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
];

List mainList=[];


class _HomeScreenState extends State<HomeScreen> {
  int currentButton = 0;


  List<String> buttonList1=[
    "https://images.unsplash.com/photo-1481724245097-97eb66ac0371?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1481724245097-97eb66ac0371?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  ];
  List<String> buttonList2=[
    "https://images.unsplash.com/photo-1551376347-075b0121a65b?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1551376347-075b0121a65b?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  ];
  List<String> buttonList3=[
    "https://images.unsplash.com/photo-1727053850611-8351da50cff9?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1727053850611-8351da50cff9?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  ];

  List mainList=[];
  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    mainList= buttonList1;
  }
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
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed:() =>   Navigator.pushNamed(context, SecondScreen.routeName),
                      icon: const Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18, top: 40, bottom: 30),
                child: Text(
                  "Explore\nthe world",
                  style: TextStyle(fontSize: 38, color: Colors.white),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: mainList.length+1,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return RotatedBox(
                        quarterTurns: 3,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    currentButton = 2;
                                    mainList=buttonList3;
                                  });
                                },
                                child: Text(
                                  'Flutter',
                                  style: TextStyle(
                                      color: currentButton == 2
                                          ? Colors.amber
                                          : Colors.black),
                                ),
                              ),
                              const SizedBox(
                                width: 100,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    currentButton = 1;
                                    mainList=buttonList2;
                                  });
                                },
                                child: Text(
                                  'Flutter',
                                  style: TextStyle(
                                      color: currentButton == 1
                                          ? Colors.amber
                                          : Colors.black),
                                ),
                              ),
                              const SizedBox(
                                width: 100,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    currentButton = 0;
                                    mainList=buttonList1;

                                  });
                                },
                                child: Text(
                                  'Flutter',
                                  style: TextStyle(
                                      color: currentButton == 0
                                          ? Colors.amber
                                          : Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    } else {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.all(10),
                              width: 220,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(mainList[index-1],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'Mountain',
                              style: TextStyle(fontSize: 24),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 15, bottom: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.blue,
                                ),
                                Text(
                                  'Mountain',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey),
                                )
                              ],
                            ),
                          )
                        ],
                      );
                    }
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
