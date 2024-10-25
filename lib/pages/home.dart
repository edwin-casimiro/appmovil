import 'package:carousel_slider/carousel_slider.dart' as carousel_slider;


import 'package:flutter/material.dart';
import 'package:appmovil/models/bag.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:appmovil/widgets/bag_item.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Bag> bags = listOfBags();
  List<String> heroimages = [
    "imagenes/product-1.jpg",
    "imagenes/product-2.jpg",
    "imagenes/product-3.jpg",
    "imagenes/product-4.jpg",
  ];
  final CarouselController _controller = CarouselController(); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 98,
        elevation: 0,
        title: Text(
          "VITRIX",
          style: GoogleFonts.playfairDisplay(
              color: Colors.red[300],
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
        leading: IconButton(
          iconSize: 40,
          onPressed: () {},
          icon: Image.asset("imagenes/icono_3.png"),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 12),
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
                color: Colors.black, shape: BoxShape.circle),
            child:
                Image.asset("imagenes/favicon.ico", fit: BoxFit.contain),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          carrusel(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 30,
            ),
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: bags.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 230,
                  mainAxisSpacing: 24,
                  crossAxisSpacing: 13,
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return BagItem(bag: bags[index]);
              },
            ),
          ),
        ]),
      ),
    );
  }

  Widget carrusel() {
    return Stack(
      children: [
        Stack(children: [
          carousel_slider.CarouselSlider.builder(
            itemCount: heroimages.length,
            options: carousel_slider.CarouselOptions(
              viewportFraction: 1,
              height: 215,
              enableInfiniteScroll: true,
            ),
            itemBuilder: (context, index, realIndex) {
              return Container(
                width: double.infinity,
                margin: const EdgeInsets.only(left: 12, right: 12, bottom: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: AssetImage(
                        heroimages[index],
                      ),
                      fit: BoxFit.cover,
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Text(
                        "todo \nrepuesto \naqui!!",
                        style: GoogleFonts.playfairDisplay(
                            backgroundColor: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
          Positioned(
              bottom: 1,
              right: 22,
              child: Row(
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red[100],
                          minimumSize: const Size(50, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )),
                      onPressed: previousPage,
                      child: const Icon(
                        Icons.arrow_back,
                        size: 30,
                      )),
                  const SizedBox(width: 210),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red[100],
                          minimumSize: const Size(50, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )),
                      onPressed: nextPage,
                      child: const Icon(
                        Icons.arrow_forward,
                        size: 30,
                      )),
                ],
              ))
        ])
      ],
    );
  }

  void previousPage() {
    _controller.jumpTo(-1);
  }

  void nextPage() {
    _controller.jumpTo(1);
  }
}
