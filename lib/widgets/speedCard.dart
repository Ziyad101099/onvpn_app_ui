import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class speedCard extends StatelessWidget {
  speedCard({
    required this.name,
    required this.icon,
    required this.speed,
    required this.grafik,
  });

  String name;
  String icon;
  String speed;
  String grafik;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.all(12),
        height: 102,
        width: 135,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(0xffF0F5FF),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xff98D98D).withOpacity(0.4),
                  ),
                  child: Image.asset(icon),
                ),
                Text(
                  name,
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Color(0xff616161),
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                speed,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff333333),
                ),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Image.asset(grafik),
            ),
          ],
        ),
      ),
    );
  }
}
