import 'package:flutter/material.dart';
import 'package:project/shared/components/components.dart';
import 'package:project/shared/styles/app_theme.dart';

class HomePage extends StatelessWidget {
  static const String routeName = "homepage";
  List<Widget> conatainerList = [
    homePageListItem(),
    homePageListItem(),
    homePageListItem(),
    homePageListItem(),
    homePageListItem(),
    homePageListItem(),
    homePageListItem(),
    homePageListItem(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200.0),
        child: AppBar(
          leading: Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Image(
                image: AssetImage('assets/images/menuItemIcon.png'),
              ),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30.0),
            ),
          ),
          backgroundColor: Colors.transparent,
          flexibleSpace: Stack(
            children: [
              Container(
                height: 324,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35),
                    ),
                    image: DecorationImage(
                        image: AssetImage("assets/images/home.jpeg"),
                        fit: BoxFit.fill)),
              ),
              Container(
                height: 400,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.6),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35)),
                ),
                child: Center(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      "QAYEM AQARAK",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 37,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Image(
          image: AssetImage("assets/images/floatingactionbtnicon.png"),
        ),
        onPressed: () {},
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(194, 219, 219, 219)),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Add Request",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 49, 123)),
                          ),
                          SizedBox(
                            width: 300,
                            child: Wrap(
                              children: const [
                                Text(
                                  "Lorem ipusum dolor sit amet,consetetur Lorem ipusum dolor sit amet, consetetur",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(147, 0, 49, 123)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                        bottom: 130,
                        start: MediaQuery.of(context).size.width - 170),
                    child: Image.asset(
                      "assets/images/requestcontainerimage.png",
                      width: 100,
                      height: 100,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                        top: 140, start: 35, end: 35),
                    child: defaultButton(
                      background: Colors.amber,
                      function: () {},
                      text: "REQUEST NOW",
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  defaultHomePageCustomContainer(
                      number: "6", title: "Pending", color: Colors.amber),
                  SizedBox(
                    width: 20,
                  ),
                  defaultHomePageCustomContainer(
                      number: "25", title: "Done", color: Color(0xFF146489)),
                  SizedBox(
                    width: 20,
                  ),
                  defaultHomePageCustomContainer(
                      number: "1", title: "Rejected", color: Colors.red),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => conatainerList[index],
                  separatorBuilder: (context, index) => SizedBox(
                        height: 20,
                      ),
                  itemCount: conatainerList.length),
            ],
          ),
        ),
      ),
    );
  }
}
