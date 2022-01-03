import 'package:flutter/material.dart';
import 'package:flutter_image_slider/carousel.dart';
import 'package:tem/imageSliders.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;

    final List<String> listImages = [
      'assets/1.jpg',
      'https://www.factroom.ru/wp-content/uploads/2019/04/5-sobiraetes-syuda-priekhat.jpg',
      'https://cdn.flixbus.de/2018-01/munich-header-d8_0.jpg',
      'assets/4.jpg',
      'assets/5.jpg',
    ];
    final _imageUrls = [
      "https://spectrumproperties.co.ug/wp-content/uploads/2018/08/IMG_7973.jpg",
      "https://spectrumproperties.co.ug/wp-content/uploads/2018/08/IMG_8427.jpg",
      "https://spectrumproperties.co.ug/wp-content/uploads/2018/08/IMG_8296.jpg",
      "https://spectrumproperties.co.ug/wp-content/uploads/2018/08/IMG_8691.jpg"
    ];

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              AppBar(
                backgroundColor: Colors.grey.shade300,
                toolbarHeight: 45,
                elevation: 0.0,
                leading: IconButton(
                  icon: Image.asset(
                    'assets/icons/cloche1.png',
                    height: 50,
                  ),
                  onPressed: () {},
                ),
                title: Image.asset(
                  'assets/icons/logo.png',
                  height: 50,
                ),
                centerTitle: true,
                actions: [
                  Image.asset(
                    'assets/icons/scan.png',
                    width: 25,
                  ),
                  IconButton(
                    icon: Image.asset('assets/icons/MN.png'),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 15,
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      border: Border(
                        bottom: BorderSide(
                          width: 3,
                          color: Color.fromRGBO(18, 136, 112, 1),
                        ),
                      ),
                    ),
                    height: 75,
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 25.0, right: 40.0, top: 0),
                              child: Row(
                                children: const [
                                  Text(
                                    'NOM',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: Color.fromRGBO(18, 136, 112, 1),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'PRENOM',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Color.fromRGBO(18, 136, 112, 1),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 190,
                                  ),
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundImage: NetworkImage(
                                        'https://le10static.com/img/cache/article/576x324/0000/0019/196885.jpeg'),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(left: 25),
                              child: Text(
                                '70 10 00 99',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(18, 136, 112, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment(0, 0.5),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 45,
                        ),
                        Container(
                          width: size.width * 0.85,
                          height: 70,
                          child: Card(
                            color: Color.fromRGBO(18, 136, 112, 1),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                'CARD',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Center(
                child: Text(
                  "Info & Promo Special",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 11,
                    color: Color.fromRGBO(17, 135, 135, 1),
                  ),
                ),
              ),
              imageSliders(),
              /*Carousel(
                autoScroll: true,
                height: 115,
                indicatorBarColor: Colors.black.withOpacity(0.0),
                activateIndicatorColor: Colors.black38,
                indicatorHeight: 7,
                indicatorWidth: 7,
                stopAtEnd: false,
                // widgets
                items: [
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ],
              ),*/
              Container(
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/images/klis.png'),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            spreadRadius: 0.5,
                            blurRadius: 1,
                            offset: Offset(1, 2),
                          ),
                        ],
                      ),
                      width: 40,
                      height: 50,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/images/Moov.png'),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            spreadRadius: 0.5,
                            blurRadius: 1,
                            offset: Offset(1, 2),
                          ),
                        ],
                      ),
                      width: 45,
                      height: 60,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/images/orange.png'),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            spreadRadius: 0.5,
                            blurRadius: 1,
                            offset: Offset(1, 2),
                          ),
                        ],
                      ),
                      width: 60,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/images/telecel.png'),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            spreadRadius: 0.5,
                            blurRadius: 1,
                            offset: Offset(1, 2),
                          ),
                        ],
                      ),
                      width: 45,
                      height: 60,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/images/Energia.png'),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            spreadRadius: 0.5,
                            blurRadius: 1,
                            offset: Offset(1, 2),
                          ),
                        ],
                      ),
                      width: 40,
                      height: 50,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.40,
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 30,
                    childAspectRatio: 0.82,
                  ),
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset(
                              'assets/icons/1.png',
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Transfert d'argent",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                              color: Color.fromRGBO(17, 135, 135, 1),
                            ),
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset(
                              'assets/icons/2.png',
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Eau et Electricité",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                              color: Color.fromRGBO(17, 135, 135, 1),
                            ),
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset(
                              'assets/icons/3.png',
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Crédit & Forfait",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                              color: Color.fromRGBO(17, 135, 135, 1),
                            ),
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset(
                              'assets/icons/4.png',
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Abonnement TV",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                              color: Color.fromRGBO(17, 135, 135, 1),
                            ),
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset(
                              'assets/icons/5.png',
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Discussion",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                              color: Color.fromRGBO(17, 135, 135, 1),
                            ),
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset(
                              'assets/icons/6.png',
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Dernière Transact",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                              color: Color.fromRGBO(17, 135, 135, 1),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                  padding:
                      EdgeInsets.only(left: 40, right: 40, bottom: 40, top: 10),
                  shrinkWrap: true,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
