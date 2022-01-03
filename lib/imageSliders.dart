// ignore_for_file: file_names

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class imageSliders extends StatefulWidget {
  const imageSliders({Key? key}) : super(key: key);

  @override
  _imageSlidersState createState() => _imageSlidersState();
}

class _imageSlidersState extends State<imageSliders> {
  final List<String> imgList = [
    'https://www.info-afrique.com/wp-content/uploads/2016/09/CECOM-ORANGE.jpg',
    'https://www.7info.ci/wp-content/uploads/2021/08/mobile-money-wave-repond-a-la-concurrence-en-ouvrant-son-agence-dans-la-commune-dadjame-7info-670x360.jpeg',
    'https://www.telenor.com/wp-content/uploads/2016/11/Wave-money-market.jpg',
    'https://assets.weforum.org/article/image/large_bFbV1v1q1REyRVFQ_iLPn42nToL2c5OIbe6VF58VZsw.jpg',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80',
    'https://miuc.org/wp-content/uploads/2019/08/How-do-we-use-money.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        items: imgList
            .map(
              (item) => GestureDetector(
                child: Container(
                  margin: const EdgeInsets.all(5.0),
                  child: ClipRRect(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(5.0)),
                      child: Stack(
                        children: <Widget>[
                          Image.network(item, fit: BoxFit.cover, width: 400.0),
                          Positioned(
                            bottom: 0.0,
                            left: 0.0,
                            right: 0.0,
                            child: Container(
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(200, 0, 0, 0),
                                    Color.fromARGB(0, 0, 0, 0)
                                  ],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                ),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 20.0),
                              child: Text(
                                'No. ${imgList.indexOf(item)} image',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
                onDoubleTap: null,
              ),
            )
            .toList(),
        options: CarouselOptions(
          height: 90,
          autoPlay: true,
          aspectRatio: 2.0,
          enlargeCenterPage: true,
        ),
      ),
    );
  }
}
