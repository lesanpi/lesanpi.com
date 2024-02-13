import 'package:flutter/material.dart';
import 'package:frontend/app/constants.dart';
import 'package:frontend/presentation/landing/bloc/bloc.dart';
import 'package:frontend/presentation/landing/widgets/landing_body.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:models/models.dart';

/// {@template landing_page}
/// A description for LandingPage
/// {@endtemplate}
class LandingPage extends StatelessWidget {
  /// {@macro landing_page}
  const LandingPage({super.key});

  /// The static route for LandingPage
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const LandingPage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LandingBloc(),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(200),
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: Consts.padding * 2,
              horizontal: 56,
            ).copyWith(right: 70),
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'lesanpi',
                    style: GoogleFonts.manrope(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Spacer(),
                  ...List.generate(PostSectionEnum.values.length, (index) {
                    final section = PostSectionEnum.values[index];
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: Consts.padding),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          section.toString(),
                          style: GoogleFonts.manrope(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    );
                  }),
                  Gap(Consts.padding),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Sign In'),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: const LandingView(),
      ),
    );
  }
}

/// {@template landing_view}
/// Displays the Body of LandingView
/// {@endtemplate}
class LandingView extends StatelessWidget {
  /// {@macro landing_view}
  const LandingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const LandingBody();
  }
}
