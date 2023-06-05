import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onvpnapp/pages/detailsPage.dart';
import 'package:onvpnapp/widgets/speedCard.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(height: 420, child: _head()),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(33.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    speedCard(
                      name: "Download",
                      icon: "images/download.png",
                      speed: "60.00 Mbps",
                      grafik: "images/grafikDownload.png",
                    ),
                    speedCard(
                      name: "Upload",
                      icon: "images/Upload.png",
                      speed: "40.05 Mbps",
                      grafik: "images/grafikUpload.png",
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("images/global.png"),
                      SizedBox(width: 5),
                      Text("Your IP: 182.36.5982"),
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 41, right: 41),
                        height: 54,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return detailPage();
                              }),
                            );
                          },
                          child: Row(
                            children: [
                              Image.asset("images/germany.png"),
                              SizedBox(width: 8),
                              Text("Frankfurt, Germany"),
                              SizedBox(width: 145),
                              Image.asset("images/signal.png"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.all(38),
                        height: 54,
                        width: 239,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(54),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff95D391),
                              Color(0xff666AF2),
                            ],
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("images/premium.png"),
                            SizedBox(width: 8),
                            Text(
                              "Get Premium",
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _head() {
  return Stack(
    children: [
      Column(
        children: [
          Container(
            // width: MediaQuery.of(context).size.width,
            height: 328,
            padding: EdgeInsets.all(16),
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
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset("images/opendrawer.png"),
                      splashRadius: 17,
                    ),
                    Row(
                      children: [
                        Text(
                          "On",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "VPN",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff7351EF),
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset("images/setting.png"),
                      splashRadius: 17,
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Text(
                  "Connected",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff7351EF),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "00.01.25",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          // Container(
          //   height: 100,
          //   width: 200,
          //   color: Colors.amber,
          // ),
        ],
      ),
      Positioned(
        top: 230,
        left: 110,
        child: Container(
          width: 184,
          height: 184,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(184),
            color: Colors.white,
          ),
          child: Stack(
            children: [
              Positioned(
                left: 20,
                top: 20,
                child: Container(
                  width: 143,
                  height: 143,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(143),
                    color: Color(0xffA6A5FE),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 20,
                        top: 20,
                        child: Container(
                          width: 102,
                          height: 102,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(143),
                            color: Colors.white,
                          ),
                          child: Image.asset("images/power.png"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
