import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(Landing());
}

class Landing extends StatelessWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFEEEEEE),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Stack(
              children: [
                Positioned(
                  left: -constraints.maxWidth * 0.2,
                  top: -constraints.maxHeight * 0.1,
                  child: ClipRect(
                    clipBehavior: Clip.hardEdge,
                    child: SvgPicture.asset(
                      'assets/svgs/circles.svg',
                      width: constraints.maxWidth * 0.3,
                      height: constraints.maxHeight * 0.3,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Positioned(
                  right: -constraints.maxWidth * 0.2,
                  bottom: -constraints.maxHeight * 0.001,
                  child: SvgPicture.asset(
                    'assets/svgs/fall.svg',
                    width: constraints.maxWidth * 0.4,
                    height: constraints.maxHeight * 0.4,
                    fit: BoxFit.contain,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Container(
                        width: constraints.maxWidth * 0.6,
                        child: Text("Welcome to",
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                            )),
                      ),
                    ),
                    
                    Center(
                      child: Container(
                        width: double.infinity,
                        height: constraints.maxWidth * 0.5,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            "Smart Attendance",
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF811FEB),
                              fontSize: 35,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
