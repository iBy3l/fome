import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Drawer(
        child: ListView(
          children: [
            Container(
              height: 200,
              color: Colors.red,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 50),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.orange,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/mari.jpg'),
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Mari Lira',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Amo Comer',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Icon(
                    Icons.home,
                    color: Colors.orange,
                  ),
                  SizedBox(width: 10),
                  Text('Início')
                ],
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Icon(
                    Icons.fastfood,
                    color: Colors.orange,
                  ),
                  SizedBox(width: 10),
                  Text('Cardápio ')
                ],
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Icon(
                    Icons.favorite,
                    color: Colors.orange,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Favoritos ',
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Icon(
                    Icons.settings,
                    color: Colors.orange,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Configuração ',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
