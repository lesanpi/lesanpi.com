import 'package:flutter/material.dart';
import 'package:frontend/app/constants.dart';
import 'package:frontend/presentation/landing/bloc/bloc.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:frontend/presentation/landing/widgets/landing_painter.dart';

/// {@template landing_body}
/// Body of the LandingPage.
///
/// Add what it does
/// {@endtemplate}
class LandingBody extends StatelessWidget {
  /// {@macro landing_body}
  const LandingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Gap(MediaQuery.of(context).size.height * 0.05),
          const WelcomeSection(),
          // Gap(MediaQuery.of(context).size.height * 0.05),
          // const RecentResources(),
          // const PresentationSection(),
          // const FooterSection(),
        ],
      ),
    );
  }
}

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: MediaQuery.of(context).size.height * .8,
      width: MediaQuery.of(context).size.width * 0.75,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80),
        child: Center(
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const LandingHeadline(),
                    Gap(Consts.padding * 2),
                    SelectableText(
                      '''
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque pharetra, augue vel aliquet cursus, magna ex varius nisl, sed scelerisque sem metus in mi. Aliquam viverra vel risus vitae ullamcorper.
      ''',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Consts.bodyColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Gap(Consts.padding),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('View Posts'),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Center(
                  child: Padding(
                    padding:
                        EdgeInsets.all(Consts.padding * 5).copyWith(right: 0),
                    child: const Placeholder(),
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

class LandingHeadline extends StatelessWidget {
  const LandingHeadline({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SelectableText.rich(
      TextSpan(
        style: const TextStyle(
          height: 1,
        ),
        children: [
          TextSpan(
            text: 'Flutter, ',
            style: GoogleFonts.manrope(
              fontSize: 65,
              fontWeight: FontWeight.w800,
            ),
          ),
          TextSpan(
            text: 'Dart',
            style: GoogleFonts.manrope(
              fontSize: 65,
              fontWeight: FontWeight.w800,
            ),
          ),
          TextSpan(
            text: ' and',
            style: GoogleFonts.manrope(
              fontSize: 65,
              fontWeight: FontWeight.w800,
            ),
          ),
          TextSpan(
            text: ' Developers',
            style: GoogleFonts.manrope(
              fontSize: 65,
              fontWeight: FontWeight.w800,
            ),
          ),
          TextSpan(
            text: ' resources',
            style: GoogleFonts.manrope(
              fontSize: 65,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}

class RecentResources extends StatelessWidget {
  const RecentResources({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height * .8,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Consts.bodyColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            MediaQuery.of(context).size.height * .4,
          ),
        ),
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * .1,
            horizontal: MediaQuery.of(context).size.height * .0,
          ).copyWith(
            left: MediaQuery.of(context).size.height * .12,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  const Gap(20),
                  Container(
                    decoration: BoxDecoration(
                      // color: Consts.greenColor.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: Consts.padding * 3),
                    child: SelectableText(
                      'Featured resources',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 35,
                        height: 1,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    // icon: const Icon(Icons.arrow_forward),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Consts.blueColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 30,
                      ),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Explore more resources',
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            height: 1,
                            // color: Consts.bodyColor,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Gap(10),
                        const Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  const Gap(20),
                ],
              ),
              Gap(Consts.padding * 3),
              Align(
                child: Wrap(
                  runAlignment: WrapAlignment.end,
                  crossAxisAlignment: WrapCrossAlignment.end,
                  spacing: Consts.padding * 5,
                  runSpacing: Consts.padding * 5,
                  children: const [
                    ResourceCard(),
                    ResourceCard(),
                    ResourceCard(),
                    ResourceCard(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ResourceCard extends StatelessWidget {
  const ResourceCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: 500,
      child: Material(
        elevation: 10,
        color: Consts.lightBlueColor,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}

class PresentationSection extends StatelessWidget {
  const PresentationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(
        vertical: 100,
        horizontal: MediaQuery.of(context).size.width * 0.1,
      ),
    );
  }
}

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(vertical: 100),
      decoration: BoxDecoration(
        color: Consts.blackColor,
      ),
    );
  }
}
