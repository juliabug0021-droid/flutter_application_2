import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_lab/lesson_19/bloc/rate_app_cubit.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class RateAppScreen extends StatefulWidget {
  const RateAppScreen({super.key});

  @override
  State<RateAppScreen> createState() => _RateAppScreenState();
}

class _RateAppScreenState extends State<RateAppScreen> {
  late final RateAppCubit _cubit;
  @override
  void initState() {
    super.initState();
    _cubit = context.read<RateAppCubit>();
  }

  @override
  void dispose() {
    if (_cubit.state.status != Status.success) {
      _cubit.cancelRating();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFA5E0FF),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Flutter lab',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight(500),
          ),
        ),
        backgroundColor: Color(0xFF1B3D70),
      ),

      body: BlocConsumer<RateAppCubit, RateAppState>(
        listener: (context, state) {
          if (state.status == Status.success) {
            context.pop(true);
          }
        },
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.only(top: 48),
            child: Container(
              padding: const EdgeInsets.fromLTRB(16, 32, 16, 32),
              decoration: BoxDecoration(
                color: Color(0xFF72C1FA),
                borderRadius: BorderRadius.circular(20),
              ),

              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'How would you rate the app?',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: Color(0xFF1B3D70),
                      fontSize: 20,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight(600),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    spacing: 20,
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      ...List.generate(5, (index) {
                        return IconButton(
                          onPressed: () {
                            context.read<RateAppCubit>().setRating(index + 1);
                          },
                          icon: Image.asset(
                            state.rating >= index + 1
                                ? 'assets/images/Rate Star.png'
                                : 'assets/images/Default Star.png',
                            width: 34,
                          ),
                        );
                      }),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 10,
                    children: [
                      SubmitRatingButton(state: state),
                      ResetRatingButton(),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class ResetRatingButton extends StatelessWidget {
  const ResetRatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 173,
      height: 46,
      child: ElevatedButton.icon(
        onPressed: () {
          context.read<RateAppCubit>().resetRating();
        },
        style: ButtonStyle(
          elevation: WidgetStatePropertyAll(4),
          padding: WidgetStatePropertyAll(EdgeInsets.fromLTRB(22, 13, 22, 13)),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          backgroundColor: WidgetStatePropertyAll(Color(0xFF41A6F4)),
        ),
        icon: Image.asset('assets/images/Reset Rating.png', height: 20),
        label: Text(
          'Reset rating',
          style: GoogleFonts.montserrat(
            color: Colors.white,
            fontSize: 16,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight(600),
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class SubmitRatingButton extends StatelessWidget {
  const SubmitRatingButton({super.key, required this.state});
  final RateAppState state;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 173,
      height: 46,
      child: ElevatedButton(
        onPressed: () {
          context.read<RateAppCubit>().submitRating();
        },
        style: ButtonStyle(
          elevation: WidgetStatePropertyAll(4),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          backgroundColor: WidgetStatePropertyAll(Color(0xFF1B3D70)),
        ),
        child: state.status == Status.loading
            ? SizedBox(
                width: 24,
                height: 24,
                child: CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 2,
                ),
              )
            : Text(
                'Submit rating',
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 16,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight(600),
                ),
                textAlign: TextAlign.center,
              ),
      ),
    );
  }
}

class MySnackBar extends StatelessWidget {
  const MySnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 390,
      padding: const EdgeInsets.fromLTRB(37, 20, 37, 20),
      decoration: BoxDecoration(
        color: Color(0xFF41A6F4),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/Star Smile.png', height: 20),
          const SizedBox(width: 12),
          Text(
            'Rating submitted successfully',
            style: GoogleFonts.montserrat(
              color: Colors.white,
              fontSize: 16,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight(600),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(width: 12),
          Image.asset('assets/images/Star Smile.png', height: 20),
        ],
      ),
    );
  }
}
