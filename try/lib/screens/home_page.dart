import 'package:animated_flutter_widgets/animations/long_tap_animation.dart';
import 'package:flutter/material.dart';
import 'package:native_animated_splash/screens/createletter.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../widgets/custom_listview.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int i = 0;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      top: true,
      bottom: false,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          actions: const [
            Icon(
              Icons.notifications_none,
              color: Color(0xff002856),
            ),
            Icon(
              Icons.person_outline,
              color: Color(0xff002856),
            )
          ],
          leading: Image.asset('assets/images/Leapro-logo-new2-blue 1.png'),
          title: const Text(
            'Letters Of Guarantee',
            style: TextStyle(
              color: Color(0xff002856),
              fontFamily: 'Calibri',
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const CreateLetter();
                },
              ),
            );
          },
          label: const Text(
            'Create',
            style: TextStyle(
              color: Color(0xff002856),
              fontFamily: 'Calibri',
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          icon: Image.asset(
            'assets/images/edit_FILL0_wght400_GRAD0_opsz24.png',
            color: const Color(0xff002856),
          ),
          backgroundColor: const Color(0xffC3E7FF),
        ),
        body: Scrollbar(
          thumbVisibility: true,
          thickness: 5,
          radius: const Radius.circular(50),
          interactive: true,
          trackVisibility: true,
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              // Expanded(
              //   child: GridView.count(
              //     shrinkWrap: true,
              //     children: const [
              //       ExpansionTile(
              //         title: Text(
              //           "Riyadh Development Authority",
              //           style: TextStyle(
              //             color: Color(0xff002856),
              //             fontFamily: 'Calibri',
              //             fontSize: 20,
              //             fontWeight: FontWeight.w700,
              //           ),
              //         ),
              //         children: [
              //           CustomLV(
              //             i: 0,
              //           ),
              //           CustomLV(
              //             i: 1,
              //           ),
              //         ],
              //       ),
              //       ExpansionTile(
              //         title: Text(
              //           "Royal Commission for Riyadh City",
              //           style: TextStyle(
              //             color: Color(0xff002856),
              //             fontFamily: 'Calibri',
              //             fontSize: 18,
              //             fontWeight: FontWeight.w700,
              //           ),
              //         ),
              //         children: [
              //           CustomLV(
              //             i: 2,
              //           ),
              //           CustomLV(
              //             i: 3,
              //           ),
              //         ],
              //       ),
              //     ],
              //     crossAxisCount: 1,
              //     mainAxisSpacing: 1,
              //   ),
              // )
              // Expanded(
              //   child: GridView(
              //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //         crossAxisCount: 1, childAspectRatio: 1.5),
              //     children: [
              //       ExpansionTile(
              //         title: Text(
              //           "Riyadh Development Authority",
              //           style: TextStyle(
              //             color: Color(0xff002856),
              //             fontFamily: 'Calibri',
              //             fontSize: 20,
              //             fontWeight: FontWeight.w700,
              //           ),
              //         ),
              //         children: [
              //           CustomLV(
              //             i: i++,
              //           ),
              //           CustomLV(
              //             i: i++,
              //           ),
              //         ],
              //       ),
              //       ExpansionTile(
              //         title: Text(
              //           "Royal Commission for Riyadh City",
              //           style: TextStyle(
              //             color: Color(0xff002856),
              //             fontFamily: 'Calibri',
              //             fontSize: 18,
              //             fontWeight: FontWeight.w700,
              //           ),
              //         ),
              //         children: [
              //           CustomLV(
              //             i: i++,
              //           ),
              //           CustomLV(
              //             i: i++,
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
              SliverToBoxAdapter(
                child: ExpansionTile(
                    title: const Text(
                      "Riyadh Development Authority",
                      style: TextStyle(
                        color: Color(0xff002856),
                        fontFamily: 'Calibri',
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    children: [
                      ListView.builder(
                          itemCount: 15,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return LongTapAnimation(
                              pressedScale: 0.96,
                              child: CustomLV(
                                i: i,
                              ),
                            );
                          }),
                    ]),
              ),
              SliverToBoxAdapter(
                child: ExpansionTile(
                    title: const Text(
                      "Riyadh Development Authority",
                      style: TextStyle(
                        color: Color(0xff002856),
                        fontFamily: 'Calibri',
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    children: [
                      ListView.builder(
                          itemCount: 15,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return ZoomTapAnimation(
                              begin: 1.0,
                              end: 0.97,
                              enableLongTapRepeatEvent: false,
                              longTapRepeatDuration:
                                  const Duration(milliseconds: 100),
                                beginDuration: const Duration(milliseconds: 20),
                              endDuration: const Duration(milliseconds: 120),
                              beginCurve: Curves.linear,
                              endCurve: Curves.fastOutSlowIn,
                              child: CustomLV(
                                i: i,
                              ),
                            );
                          }),
                    ]),
              ),
              // SliverToBoxAdapter(
              //   child: ExpansionTile(
              //     title: Text(
              //       "Royal Commission for Riyadh City",
              //       style: TextStyle(
              //         color: Color(0xff002856),
              //         fontFamily: 'Calibri',
              //         fontSize: 18,
              //         fontWeight: FontWeight.w700,
              //       ),
              //     ),
              //     children: [
              //       CustomLV(
              //         i: i,
              //       ),
              //       CustomLV(
              //         i: i,
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
