import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Produtos extends StatelessWidget {
  Produtos({Key? key}) : super(key: key);

  List<String> produtosimage = [
    "images/produtos/sushi.png",
    "images/produtos/feijoada.jpg",
    "images/produtos/humburguer.jpg",
    "images/produtos/pizza.jpg",
    "images/produtos/pizza.jpg",
    "images/produtos/pizza.jpg",
    "images/produtos/pizza.jpg",
    "images/produtos/pizza.jpg",
    "images/produtos/pizza.jpg",
    "images/produtos/pizza.jpg",
    "images/produtos/pizza.jpg",
    "images/produtos/pizza.jpg",
    "images/produtos/pizza.jpg",
    "images/produtos/pizza.jpg",
  ];

  List<String> nome = [
    "Rodizio Sushi",
    "Feijoada Grande",
    "Combo Humbúrguer",
    "Pizza Grande 8p",
    "Pizza Grande 8p",
    "Pizza Grande 8p",
    "Pizza Grande 8p",
    "Pizza Grande 8p",
    "Pizza Grande 8p",
    "Pizza Grande 8p",
    "Pizza Grande 8p",
    "Pizza Grande 8p",
    "Pizza Grande 8p",
    "Pizza Grande 8p",
  ];

  List<String> descricao = [
    "Combo de Sushi, 1 temaki,",
    "Arros, Bisteca, torresmo",
    "Combo de Sushi, 1 temaki,",
    "Combo de Sushi, 1 temaki,",
    "Combo de Sushi, 1 temaki,",
    "Combo de Sushi, 1 temaki,",
    "Combo de Sushi, 1 temaki,",
    "Combo de Sushi, 1 temaki,",
    "Combo de Sushi, 1 temaki,",
    "Combo de Sushi, 1 temaki,",
    "Combo de Sushi, 1 temaki,",
    "Combo de Sushi, 1 temaki,",
    "Combo de Sushi, 1 temaki,",
    "Combo de Sushi, 1 temaki,",
    "Combo de Sushi, 1 temaki,",
    "Combo de Sushi, 1 temaki,",
    "Combo de Sushi, 1 temaki,",
  ];

  List<String>? preco = [
    '99.90',
    '25.00',
    '18.90',
    '37.00',
    '37.00',
    '37.00',
    '37.00',
    '37.00',
    '37.00',
    ' 37.00',
    '37.00',
    '37.00',
    '37.00',
    '37.00',
    '37.00',
    '37.00',
    '37.00',
    '37.00',
  ];

  List<int> peso = [
    500,
    1000,
    200,
    600,
    600,
    600,
    600,
    600,
    600,
    600,
    600,
    600,
    600,
    600,
    600,
    600,
    600,
  ];

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.all(2),
        height: 600,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color.fromARGB(244, 246, 246, 241), Colors.white],
        )),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: ListView.builder(
            padding: EdgeInsets.all(8),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: produtosimage.length,
            itemBuilder: ((context, index) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 1,
                    ),
                    width: 370,
                    height: 80,
                    child: Card(
                      margin: EdgeInsets.only(top: 2),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(3),
                              width: 90,
                              child: Image.asset(
                                produtosimage[index],
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  nome[index],
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5),
                                Text('${peso[index]} KG'),
                                Text(
                                  descricao[index],
                                  style: TextStyle(color: Colors.green),
                                ),
                              ],
                            ),
                            SizedBox(width: 1),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text(
                                "R\$ ${preco?[index]}",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}
