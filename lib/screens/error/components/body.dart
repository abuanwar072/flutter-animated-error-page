import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'error_text.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ErrorText(),
                SizedBox(
                  width: 641,
                  height: 310,
                  child: Stack(
                    children: [
                      // Shadow
                      Positioned(
                        top: 0,
                        left: 0,
                        child: SvgPicture.asset("assets/icons/Group 64.svg"),
                      ),
                      // Cycle
                      Positioned(
                        bottom: 6,
                        right: 147,
                        child: SvgPicture.asset(
                          "assets/icons/cycle_part_2.svg",
                          height: 142,
                          width: 142,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 120,
                        child: SvgPicture.asset(
                          "assets/icons/cycle_part_1.svg",
                          height: 287,
                        ),
                      ),
                      // Bottom Line
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: SvgPicture.asset("assets/icons/line.svg"),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
