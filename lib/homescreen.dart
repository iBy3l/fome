import 'package:flutter/material.dart';
import 'package:sushi/header.dart';
import 'package:sushi/categoria.dart';
import 'package:sushi/drawer.dart';
import 'package:sushi/produtos_lista.dart';

import 'banner_carosel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerPage(),
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          SliverAppBar(
            pinned: true,
            title: Text(
              'Food Br',
              textAlign: TextAlign.center,
            ),
            backgroundColor: Colors.red,
            actions: [
              Icon(Icons.shopping_cart),
              SizedBox(width: 5),
            ],
          ),
          Cabeca(),
          BannerCarousel(),
          SliverToBoxAdapter(
              child: Padding(
            padding: const EdgeInsets.only(top: 15, left: 10, bottom: 10),
            child: Text(
              "Categorias",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          )),
          Categoria(),
          SliverToBoxAdapter(
              child: Padding(
            padding:
                const EdgeInsets.only(top: 15, left: 10, bottom: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Os mais pedidos",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Ver todos",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ],
            ),
          )),
          Produtos(),
        ],
      ),
    );
  }
}
