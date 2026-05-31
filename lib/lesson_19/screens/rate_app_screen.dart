import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_lab/lesson_19/bloc/rate_app_cubit.dart';

class RateAppScreen extends StatefulWidget {
  const RateAppScreen({super.key});

  @override
  State<RateAppScreen> createState() => _RateAppScreenState();
}

class _RateAppScreenState extends State<RateAppScreen> {
  @override
  void initState() {
    super.initState();
    // context.read<RateAppCubit>().resetRating();
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

      body: BlocBuilder<RateAppCubit, RateAppState>(
        builder: (context, state) {
          return Padding(
            padding: EdgeInsetsGeometry.only(top: 48),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF41A6F4),
                borderRadius: BorderRadius.circular(20),
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'How would you rate the app?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF1B3D70),
                      fontSize: 20,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight(600),
                    ),
                  ),
                  Row(
                    spacing: 20,
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      ...List.generate(5, (index) {
                        if (state.rating >= index + 1) {
                          return IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/images/Rate Star.png',
                              width: 48,
                            ),
                          );
                        } else {
                          return IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/images/Default Star.png',
                              width: 48,
                            ),
                          );
                        }
                      }),
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
