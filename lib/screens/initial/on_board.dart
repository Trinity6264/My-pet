import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:pet/screens/authentication/wrapper.dart';

class OnBoard extends StatelessWidget {
  const OnBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IntroductionScreen(
        curve: Curves.linear,
        isBottomSafeArea: true,
        onDone: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (_) => Wrapper(),
            ),
          );
        },
        showNextButton: true,
        next: Text('Next'),
        showDoneButton: true,
        done: Text('Done'),
        pages: [
          PageViewModel(
            bodyWidget: Text(
              'I think having an animal in your life makes you a better human.',
              textAlign: TextAlign.center,
              style: GoogleFonts.alef(
                letterSpacing: 1.0,
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ),
            decoration: PageDecoration(
              bodyAlignment: Alignment.topCenter,
              imagePadding: EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 20,
              ),
            ),
            image: Center(
              child: SvgPicture.asset('assets/on_board_assets/doggy.svg'),
            ),
            title: 'Find Your Pet With Us',
          ),
          PageViewModel(
            bodyWidget: Text(
              'Pets are humanizing. They remind us we have an obligation and responsibility to preserve and nurture and care for all life.',
              textAlign: TextAlign.center,
              style: GoogleFonts.alef(
                letterSpacing: 1.0,
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ),
            decoration: PageDecoration(
              bodyAlignment: Alignment.topCenter,
              imagePadding: EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 20,
              ),
            ),
            image: Center(
              child: SvgPicture.asset('assets/on_board_assets/walk.svg'),
            ),
            title: 'Find The Best Pet In Your Location',
          ),
          PageViewModel(
            bodyWidget: Text(
              'Pets have more love and compassion in them than most humans',
              textAlign: TextAlign.center,
              style: GoogleFonts.alef(
                letterSpacing: 1.0,
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ),
            decoration: PageDecoration(
              bodyAlignment: Alignment.topCenter,
              imagePadding: EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 20,
              ),
            ),
            image: Center(
              child: SvgPicture.asset('assets/on_board_assets/friends.svg'),
            ),
            title: 'Adopt Your Best Friend',
          ),
        ],
      ),
    );
  }
}
