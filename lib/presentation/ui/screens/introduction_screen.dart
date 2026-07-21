import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: Colors.white,

      animationDuration: 500,

      showSkipButton: true,

      skip: Text(
        "Skip",
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w600,
          color: Colors.grey,
        ),
      ),

      next: Container(
        width: 50,
        height: 50,
        decoration: const BoxDecoration(
          color: Color(0xff00C569),
          shape: BoxShape.circle,
        ),
        child: const Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      ),

      done: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 12,
        ),
        decoration: BoxDecoration(
          color: const Color(0xff00C569),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          "Get Started",
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      dotsDecorator: DotsDecorator(
        activeColor: const Color(0xff00C569),
        size: const Size(8, 8),
        activeSize: const Size(28, 8),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),

      pages: [

        _page(
          image: SvgPicture.asset("assets/images/enjoy.svg"),
          title: "Discover Amazing Products",
          body:
          "Browse thousands of products from your favorite brands with the best deals.",
        ),

        _page(
          image: SvgPicture.asset("assets/images/team.svg"),
          title: "Fast & Safe Delivery",
          body:
          "Track your order in real time and receive it safely at your doorstep.",
        ),

        _page(
          image: SvgPicture.asset("assets/images/team1.svg"),
          title: "Secure Online Payment",
          body:
          "Pay with complete confidence using trusted payment methods.",
        ),
      ],

      onDone: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => const HomeScreen(),
          ),
        );
      },

      onSkip: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => const HomeScreen(),
          ),
        );
      },
    );
  }

  PageViewModel _page({
    required Widget image,
    required String title,
    required String body,
  }) {
    return PageViewModel(
      titleWidget: Text(
        title,
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
      ),

      bodyWidget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          body,
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: Colors.grey.shade600,
          ),
        ),
      ),

      image: Center(
        child: image,
      ),

      decoration: const PageDecoration(
        pageColor: Colors.white,
        imagePadding: EdgeInsets.only(top: 60),
        bodyPadding: EdgeInsets.only(top: 20),
      ),
    );
  }
}