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
              CustomTile(
                shadowColor:
                    const Color.fromARGB(255, 39, 43, 170).withOpacity(0.92),
                halfCirclerStart: const Color(0x00CDCFFF),
                halfCirclerEnd: const Color(0xFF040EFF),
                gradientStart: const Color(0xFF001AFF),
                gradientEnd: const Color(0xFF1A30FF),
              ),
              CustomTile(
                shadowColor:
                    Color.fromARGB(255, 143, 20, 20).withOpacity(0.92),
                halfCirclerStart: const Color(0x00CDCFFF),
                halfCirclerEnd: Color.fromARGB(255, 202, 1, 1),
                gradientStart: const Color.fromARGB(255, 255, 4, 4),
                gradientEnd: Color.fromARGB(255, 255, 25, 25),
              ),
              CustomTile(
                shadowColor:
                    Color.fromARGB(255, 16, 133, 25).withOpacity(0.92),
                halfCirclerStart: Color.fromARGB(0, 235, 253, 240),
                halfCirclerEnd: Color.fromARGB(255, 0, 134, 29),
                gradientStart: Color.fromARGB(255, 0, 255, 98),
                gradientEnd: Color.fromARGB(255, 0, 179, 39),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class CustomTile extends StatelessWidget {
  CustomTile({
    Key? key,
    this.shadowColor,
    this.halfCirclerStart,
    this.halfCirclerEnd,
    this.gradientStart,
    this.gradientEnd,
  }) : super(key: key);

  Color? shadowColor;
  Color? halfCirclerStart;
  Color? halfCirclerEnd;
  Color? gradientStart;
  Color? gradientEnd;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 106,
          height: 178,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 7),
                blurRadius: 0,
                color: shadowColor!,
                // Color.fromARGB(255, 39, 43, 170).withOpacity(0.92),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                gradientStart!.withOpacity(0.33),
                gradientEnd!,
                // Color(0xFF001AFF).withOpacity(0.33),
                // Color(0xFF1A30FF),
              ],
            ),
            // color: Colors.white,
          ),
          child: const SizedBox(
            width: 106,
            height: 178,
          ),
        ),
        Positioned.fill(
          bottom: 0,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 60,
              height: 30,
              decoration: BoxDecoration(
                // color: Colors.blue.shade900,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(200),
                  topRight: Radius.circular(200),
                ),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    halfCirclerStart! /*Color(0x00CDCFFF)*/ .withOpacity(0.0),
                    halfCirclerEnd!
                    // Color(0xFF040EFF),
                  ],
                  stops: [-0.5, 0.8],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
