import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class detailPage extends StatelessWidget {
  const detailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0F0F0),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(16),
                height: 328,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Colors.white,
                        Color(0xffF1F0FF),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Image.asset("images/back.png"),
                          splashRadius: 17,
                        ),
                        Text(
                          "Details",
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.white,
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Image.asset("images/setting.png"),
                            splashRadius: 17,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 44),
                    Text(
                      "You Are Conected",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff7351EF),
                      ),
                    ),
                    Text("29:15:57",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        )),
                    SizedBox(height: 70),
                    Container(
                      padding: EdgeInsets.fromLTRB(24, 16, 24, 16),
                      width: 330,
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Row(
                        children: [
                          Image.asset("images/germany.png"),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Frankfurt, Germany",
                                style: GoogleFonts.poppins(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "images/online.png",
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "32,235 Online",
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      color: Color(0xff797979),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(width: 25),
                          Image.asset("images/signal.png"),
                          Text(
                            "65ms",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Color(0xff797979),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(18, 18, 18, 0),
                padding: EdgeInsets.all(24),
                height: 330,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Peak Speed",
                              style: GoogleFonts.poppins(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "Your Fastout download speed",
                              style: GoogleFonts.poppins(fontSize: 12),
                            ),
                          ],
                        ),
                        Image.asset("images/info.png"),
                      ],
                    ),
                    SizedBox(height: 16),
                    Center(
                      child: Image.asset("images/rpm.png"),
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Image.asset("images/unduh.png"),
                            SizedBox(width: 9),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Download",
                                  style: GoogleFonts.poppins(
                                      fontSize: 14, color: Color(0xff797979)),
                                ),
                                Text(
                                  "60.00 Mbps",
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset("images/upload1.png"),
                            SizedBox(width: 9),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Upload",
                                  style: GoogleFonts.poppins(
                                      fontSize: 14, color: Color(0xff797979)),
                                ),
                                Text(
                                  "40.05 Mbps",
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Disconnect",
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Color(0xffFF5454)),
                    fixedSize: MaterialStatePropertyAll(Size(240, 54)),
                    shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
