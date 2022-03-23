import 'package:flutter/material.dart';
import 'package:sushi/produtos_lista.dart';

// ignore: must_be_immutable
class Categoria extends StatelessWidget {
  Categoria({Key? key}) : super(key: key);

  List<String> images = [
    "images/sushis.png",
    "images/hamburguer.png",
    "images/pizza.png",
    "images/refri.png",
    "images/almoco.png",
    "images/salgados.png",
    "images/salgados.png",
    "images/salgados.png",
    "images/salgados.png",
    "images/salgados.png",
  ];
  List<String> categorias = [
    "Sushi",
    "Hambúrguer",
    "Pizza",
    "Refrigerante",
    "Almoço",
    "Salgados",
    "Salgados",
    "Salgados",
    "Salgados",
    "Salgados",
  ];

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 110,
        margin: EdgeInsets.only(
          top: 2,
          left: 5,
          bottom: 0,
        ),
        child: ListView.builder(
          itemCount: images.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Row(
              children: [
                Padding(
                    padding: const EdgeInsets.only(
                  left: 8,
                )),
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.red,
                        image: DecorationImage(
                          image: AssetImage(images[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text(
                        categorias[index],
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
