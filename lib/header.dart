import 'package:flutter/material.dart';
// Aqui Fica as informações do usuario e a barra de pesquisa :)

class Cabeca extends StatefulWidget {
  const Cabeca({Key? key}) : super(key: key);

  @override
  State<Cabeca> createState() => _CabecaState();
}

class _CabecaState extends State<Cabeca> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SliverList(
      delegate: SliverChildListDelegate([
        Stack(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: size.height / 5,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(16),
                    ),
                    boxShadow: [
                      BoxShadow(blurRadius: 2),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.orange,
                            radius: 34,
                            child: CircleAvatar(
                              backgroundImage: AssetImage("images/mari.jpg"),
                              radius: 30,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 15),
                              Text(
                                'Mari Lira',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              //*SizedBox(height: 07),
                              // Container(
                              //   width: 78,
                              //  padding: EdgeInsets.all(4),
                              //  decoration: BoxDecoration(
                              //    borderRadius: BorderRadius.circular(15),
                              //    color: Colors.orange,
                              //  ),
                              ///  child: Center(
                              //   child: Text(
                              //     " VIP ",
                              //     style: TextStyle(
                              //       color: Colors.white,
                              //      ),
                              //    ),
                              //  ),
                              // ),
                              SizedBox(height: 5),
                              InkWell(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      size: 12,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      'Destino: Rua do Anjo 01',
                                      style: TextStyle(),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: [
                              SizedBox(height: 15),
                              Text(
                                " R\$ 154,00 ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height: 2),
                              Container(
                                width: 78,
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.orange,
                                ),
                                child: Center(
                                  child: Text(
                                    " VIP ",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
            // Barra de pesquisa
            Positioned(
              bottom: 0,
              child: Container(
                height: 50,
                width: size.width,
                child: Card(
                  color: Colors.white,
                  elevation: 3,
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: 'O que deseja?',
                        suffixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        contentPadding: EdgeInsets.only(left: 90)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
