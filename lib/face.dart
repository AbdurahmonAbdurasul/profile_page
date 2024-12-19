import 'package:flutter/material.dart';

class Face extends StatelessWidget {
  const Face({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Container(
          width: 350,
          height: 350,
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 70,
                top: 80,
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.orange),
                ),
              ),
              Positioned(
                right: 70,
                top: 80,
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.orange),
                ),
              ),
              Positioned(
                top: 110,
                left: 158,
                child: Container(
                  width: 30,
                  height: 100,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle, color: Colors.orange),
                ),
              ),
              Positioned(
                left: 125,
                bottom: 60,
                child: Container(
                  width: 100,
                  height: 35,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle, color: Colors.orange),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
