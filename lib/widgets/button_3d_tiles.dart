import 'package:custom_weird_widgets/model/button_3d_tiles_model.dart';
import 'package:flutter/material.dart';

class Button3DTiles extends StatelessWidget {
  const Button3DTiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Button 3D Tiles"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Button3DTilesModel(
                shadowColor:
                    const Color.fromARGB(255, 39, 43, 170).withOpacity(0.92),
                halfCirclerStart: const Color(0x00CDCFFF),
                halfCirclerEnd: const Color(0xFF040EFF),
                gradientStart: const Color(0xFF001AFF),
                gradientEnd: const Color(0xFF1A30FF),
              ),
              Button3DTilesModel(
                shadowColor:
                    const Color.fromARGB(255, 143, 20, 20).withOpacity(0.92),
                halfCirclerStart: const Color(0x00CDCFFF),
                halfCirclerEnd: const Color.fromARGB(255, 202, 1, 1),
                gradientStart: const Color.fromARGB(255, 255, 4, 4),
                gradientEnd: const Color.fromARGB(255, 255, 25, 25),
              ),
              Button3DTilesModel(
                shadowColor:
                    const Color.fromARGB(255, 16, 133, 25).withOpacity(0.92),
                halfCirclerStart: const Color.fromARGB(0, 235, 253, 240),
                halfCirclerEnd: const Color.fromARGB(255, 0, 134, 29),
                gradientStart: const Color.fromARGB(255, 0, 255, 98),
                gradientEnd: const Color.fromARGB(255, 0, 179, 39),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
