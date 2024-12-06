
import 'package:clue/components/map_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: double.infinity,
        color: const Color.fromRGBO(33, 7, 51, 1),
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Flexible(
                  flex: 3,
                  child: Container(
                    margin: const EdgeInsets.only(top: 80),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Flexible(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(26),
                                child: Row(
                                  children: <Widget>[
                                    SizedBox(
                                      height: 50,
                                      width: 50,
                                      child: SvgPicture.asset(
                                        'assets/logo-clue.svg',
                                        height: 50,
                                        width: 50,
                                        colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                                      ),
                                    ),
                                  ],
                                )
                                ),
                            ),
                            IconButton(
                              style: ButtonStyle(
                                backgroundColor: WidgetStateProperty .all<Color>(const Color.fromRGBO(69, 42, 89, 1)),
                                shape: WidgetStateProperty.all<OutlinedBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                padding: WidgetStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.all(12)),
                              ),
                              icon: const Icon(
                                Icons.notifications,
                                color: Colors.white,
                                size: 23,
                              ),
                              onPressed: () {
                                // Add your onPressed code here!
                              },
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          "You don't have a clue ? Welcome to Clue",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: Container(
                    color: Colors.white,
                    width: double.infinity,
                    padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.topLeft,
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.symmetric(vertical: 15),
                                width: double.infinity,
                                child: const Text(
                                  "Category",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromRGBO(33, 7, 51, 1),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,

                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 100,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: <Widget>[
                                    Container(
                                      margin: const EdgeInsets.only(right: 10),
                                      padding: const EdgeInsets.all(10),
                                      width: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          SvgPicture.asset(
                                            'assets/logo-clue.svg',
                                            height: 50,
                                            width: 50,
                                            colorFilter: const ColorFilter.mode(Color.fromRGBO(167,173,183,1), BlendMode.srcIn),
                                          ),
                                          const SizedBox(height: 9),
                                          const Text(
                                            "Shop",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(right: 10),
                                      padding: const EdgeInsets.all(10),
                                      width: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          SvgPicture.asset(
                                            'assets/logo-clue.svg',
                                            height: 50,
                                            width: 50,
                                            colorFilter: const ColorFilter.mode(Color.fromRGBO(167,173,183,1), BlendMode.srcIn),
                                          ),
                                          const SizedBox(height: 9),
                                          const Text(
                                            "Parking",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(right: 10),
                                      padding: const EdgeInsets.all(10),
                                      width: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          SvgPicture.asset(
                                            'assets/logo-clue.svg',
                                            height: 50,
                                            width: 50,
                                            colorFilter: const ColorFilter.mode(Color.fromRGBO(167,173,183,1), BlendMode.srcIn),
                                          ),
                                          const SizedBox(height: 9),
                                          const Text(
                                            "Product",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(right: 10),
                                      padding: const EdgeInsets.all(10),
                                      width: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          SvgPicture.asset(
                                            'assets/logo-clue.svg',
                                            height: 50,
                                            width: 50,
                                            colorFilter: const ColorFilter.mode(Color.fromRGBO(167,173,183,1), BlendMode.srcIn),
                                          ),
                                          const SizedBox(height: 9),
                                          const Text(
                                            "Event",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(right: 10),
                                      padding: const EdgeInsets.all(10),
                                      width: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          SvgPicture.asset(
                                            'assets/logo-clue.svg',
                                            height: 50,
                                            width: 50,
                                            colorFilter: const ColorFilter.mode(Color.fromRGBO(167,173,183,1), BlendMode.srcIn),
                                          ),
                                          const SizedBox(height: 9),
                                          const Text(
                                            "Shop",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(right: 10),
                                      padding: const EdgeInsets.all(10),
                                      width: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          SvgPicture.asset(
                                            'assets/logo-clue.svg',
                                            height: 50,
                                            width: 50,
                                            colorFilter: const ColorFilter.mode(Color.fromRGBO(167,173,183,1), BlendMode.srcIn),
                                          ),
                                          const SizedBox(height: 9),
                                          const Text(
                                            "Parking",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(right: 10),
                                      padding: const EdgeInsets.all(10),
                                      width: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          SvgPicture.asset(
                                            'assets/logo-clue.svg',
                                            height: 50,
                                            width: 50,
                                            colorFilter: const ColorFilter.mode(Color.fromRGBO(167,173,183,1), BlendMode.srcIn),
                                          ),
                                          const SizedBox(height: 9),
                                          const Text(
                                            "Product",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(right: 10),
                                      padding: const EdgeInsets.all(10),
                                      width: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          SvgPicture.asset(
                                            'assets/logo-clue.svg',
                                            height: 50,
                                            width: 50,
                                            colorFilter: const ColorFilter.mode(Color.fromRGBO(167,173,183,1), BlendMode.srcIn),
                                          ),
                                          const SizedBox(height: 9),
                                          const Text(
                                            "Event",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]
                          )
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.symmetric(vertical: 15),
                                width: double.infinity,
                                child: const Text(
                                  "Popular near by",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromRGBO(33, 7, 51, 1),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 137,
                                child: ListView(
                                  scrollDirection: Axis.vertical,
                                  padding: const EdgeInsets.only(top: 0),
                                  children: <Widget>[
                                    Container(
                                      margin: const EdgeInsets.only(bottom: 10),
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: const Color.fromARGB(29, 33, 7, 51),
                                      ),
                                      child: Row(
                                        children: <Widget>[
                                          Flexible(
                                            flex: 2,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                color: const Color.fromRGBO(33, 7, 51, 1),
                                              ),
                                              child: const SizedBox(
                                                height: 70,
                                                width: 87,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                          const Flexible(
                                            flex: 3,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  "Musical Festival",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Text(
                                                  "41°24'12.2\"N 2°10'26.5\"E",
                                                  style: TextStyle(
                                                    color: Colors.black87,
                                                    fontSize: 13,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(width: 60),
                                          const Flexible(
                                            fit: FlexFit.tight,
                                            child: Text(
                                              "2.5 km",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(bottom: 10),
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: const Color.fromARGB(29, 33, 7, 51),
                                      ),
                                      child: Row(
                                        children: <Widget>[
                                          Flexible(
                                            flex: 2,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                color: const Color.fromRGBO(33, 7, 51, 1),
                                              ),
                                              child: const SizedBox(
                                                height: 70,
                                                width: 87,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                          const Flexible(
                                            flex: 3,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  "Parking 24h",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Text(
                                                  "41°24'12.2\"N 2°10'26.5\"E",
                                                  style: TextStyle(
                                                    color: Colors.black87,
                                                    fontSize: 13,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(width: 60),
                                          const Flexible(
                                            fit: FlexFit.tight,
                                            child: Text(
                                              "5 km",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(bottom: 10),
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: const Color.fromARGB(29, 33, 7, 51),
                                      ),
                                      child: Row(
                                        children: <Widget>[
                                          Flexible(
                                            flex: 2,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                color: const Color.fromRGBO(33, 7, 51, 1),
                                              ),
                                              child: const SizedBox(
                                                height: 70,
                                                width: 87,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                          const Flexible(
                                            flex: 3,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  "Carrefour",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Text(
                                                  "41°24'12.2\"N 2°10'26.5\"E",
                                                  style: TextStyle(
                                                    color: Colors.black87,
                                                    fontSize: 13,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(width: 60),
                                          const Flexible(
                                            fit: FlexFit.tight,
                                            child: Text(
                                              "1.5 km",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ),
                            ],  
                          )
                        )
                      ],
                    ),
                  )
                ),
              ],
            ),
            Positioned(
              top: 250,
              width: MediaQuery.of(context).size.width,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(26),
                  child: const SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: MapComponent(),
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}