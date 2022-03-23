import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sushi/homescreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> with TickerProviderStateMixin {
  late AnimationController scaleController;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    scaleController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500))
          ..addStatusListener(
            (status) {
              if (status == AnimationStatus.completed) {
                Navigator.push(
                  context,
                  AnimatingRoute(
                    route: HomeScreen(),
                    page: widget,
                  ),
                );
                Timer(
                  Duration(milliseconds: 300),
                  () {
                    // print('worked');
                    scaleController.reset();
                  },
                );
              }
            },
          );

    scaleAnimation =
        Tween<double>(begin: 0.0, end: 10.0).animate(scaleController);
  }

  @override
  void dispose() {
    scaleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext c) {
    double _w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: InkWell(
          onTap: () {
            scaleController.forward();
          },
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
            child: AnimatedBuilder(
              animation: scaleAnimation,
              builder: (c, child) => Transform.scale(
                scale: scaleAnimation.value,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AnimatingRoute extends PageRouteBuilder {
  final Widget page;
  final Widget route;

  AnimatingRoute({required this.page, required this.route})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: route,
          ),
        );
}
