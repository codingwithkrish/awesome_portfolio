import 'package:auto_size_text/auto_size_text.dart';
import 'package:awesome_portfolio/consts/data.dart';
import 'package:awesome_portfolio/providers/current_state.dart';
import 'package:awesome_portfolio/providers/theme_provider.dart';
import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../widgets/frosted_container.dart';
import '../../widgets/rain_cloud.dart';
import '../phone_screen/clock/clock_screen.dart';
import 'phone_screen_wrapper.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeProvider theme = Provider.of<ThemeProvider>(context, listen: false);
    CurrentState currentState =
        Provider.of<CurrentState>(context, listen: false);
    Size size = MediaQuery.of(context).size;
    theme.size = MediaQuery.of(context).size;
    theme.widthRatio = theme.size.width / baseWidth;
    theme.heightRatio = theme.size.height / baseHeight;
    bool phone = false;
    if (size.width < 700) {
      phone = true;
    }

    return Scaffold(
      body: Stack(
        children: [
          Selector<CurrentState, Gradient>(
            selector: (context, provider) => provider.bgGradient,
            builder: (context, _, __) {
              return Container(
                decoration: BoxDecoration(gradient: currentState.bgGradient),
              );
            },
          ),
          size.height > 600
              ? const Rain(
                  oposite: false,
                  top: 300,
                )
              : Container(),
          !phone
              ? Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: FrostedWidget(
                    height: 50,
                    childW: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Login"),
                      ],
                    ),
                  ),
                )
              : Container(),
          Selector<CurrentState, String>(
            selector: (context, provider) => provider.selectedCloud,
            builder: (context, _, __) {
              return SvgPicture.asset(
                currentState.selectedCloud,
                // width: double.infinity,
                height: size.height,
                fit: BoxFit.cover,
              );
            },
          ),
          size.height > 600
              ? const Rain(
                  oposite: true,
                  top: 50,
                )
              : Container(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /// Left side frosted Containers

                  phone
                      ? Container()
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Transform(
                              transform: Matrix4.identity()
                                ..setEntry(3, 2, 0.01)
                                ..rotateY(-0.06),
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                margin: EdgeInsets.only(
                                    top: 0, bottom: 10 * theme.heightRatio),
                                child: FrostedWidget(
                                  childW: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Transform(
                                      transform: Matrix4.identity()
                                        ..setEntry(3, 2, 0.01)
                                        ..rotateY(-0.06),
                                      alignment: FractionalOffset.center,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Flexible(
                                              child: AutoSizeText(
                                            "Coming Soon!",
                                            style: GoogleFonts.exo(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 28 *
                                                  theme.widthRatio *
                                                  theme.heightRatio,
                                            ),
                                            textAlign: TextAlign.center,
                                            maxFontSize: 28,
                                            minFontSize: 15,
                                          )),
                                        ],
                                      ).animate().fadeIn(
                                          delay: 1.seconds,
                                          duration: .7.seconds),
                                    ),
                                  ),
                                  height: 395 * theme.heightRatio,
                                  width: 247.5 * theme.widthRatio,
                                ),
                              ),
                            ),
                            Transform(
                              transform: Matrix4.identity()
                                ..setEntry(3, 2, 0.009999)
                                ..rotateY(-0.07),
                              alignment: Alignment.topCenter,
                              child: FrostedWidget(
                                onPressed: () {},
                                childW: Center(
                                  child: Container(
                                    padding: EdgeInsets.all(
                                        theme.size.width < 1000 ? 10 : 30),
                                    child: Padding(
                                            padding: EdgeInsets.all(20),
                                            child: ClockScreen())
                                        .animate()
                                        .fadeIn(
                                            delay: 1.seconds,
                                            duration: .7.seconds),
                                  ),
                                ),
                                height: 175.5 * theme.heightRatio,
                                width: 245 * theme.widthRatio,
                              ),
                            ),
                          ],
                        ),

                  // main mobile screen
                  SizedBox(
                    height: size.height - 100,
                    child: Consumer<CurrentState>(
                      // selector: (context, provider) => provider.currentDevice,
                      builder: (context, _, __) {
                        return DeviceFrame(
                          device: currentState.currentDevice,
                          screen: Container(
                              decoration: BoxDecoration(
                                  gradient: currentState.bgGradient),
                              child: ScreenWrapper(
                                  childG: currentState.currentScreen)),
                        );
                      },
                    ),
                  ),

                  /// Right side frosted containers
                  phone
                      ? Container()
                      : Column(
                          children: [
                            Transform(
                              transform: Matrix4.identity()
                                ..setEntry(3, 2, 0.01)
                                ..rotateY(0.06),
                              alignment: Alignment.bottomCenter,
                              child: FrostedWidget(
                                height: 395 * theme.heightRatio,
                                width: 247.5 * theme.widthRatio,
                                childW: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Wrap(
                                      children: [
                                        ...List.generate(
                                          colorPalette.length,
                                          (index) => Consumer<CurrentState>(
                                              builder: (context, _, __) {
                                            return CustomButton(
                                              margin: const EdgeInsets.all(10),
                                              pressed:
                                                  currentState.selectedColor ==
                                                          index
                                                      ? Pressed.pressed
                                                      : Pressed.notPressed,
                                              animate: true,
                                              borderRadius: 100,
                                              shadowColor: Colors.blueGrey[50],
                                              isThreeD: true,
                                              backgroundColor:
                                                  colorPalette[index].color,
                                              width: 50 * theme.widthRatio,
                                              height: 50 * theme.widthRatio,
                                              onPressed: () {
                                                currentState
                                                    .changeGradient(index);
                                              },
                                            );
                                          }),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Transform(
                              transform: Matrix4.identity()
                                ..setEntry(3, 2, 0.00999)
                                ..rotateY(0.06),
                              alignment: Alignment.topCenter,
                              child: Container(
                                margin:
                                    const EdgeInsets.only(top: 0, bottom: 10),
                                child: FrostedWidget(
                                  childW: Center(
                                    child: Container(
                                      margin: const EdgeInsets.all(10),
                                      padding:
                                          EdgeInsets.all(10 * theme.widthRatio),
                                      child: Center(
                                          child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          AutoSizeText(
                                            'Coming Soon!',
                                            style: GoogleFonts.inter(
                                                // fontSize: 30,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w400),
                                            maxFontSize: 25,
                                            minFontSize: 10,
                                            maxLines: 3,
                                          ),
                                        ],
                                      )),
                                    ),
                                  ).animate().fadeIn(
                                      delay: 1.seconds, duration: .7.seconds),
                                  height: 175.5 * theme.heightRatio,
                                  width: 245 * theme.widthRatio,
                                ),
                              ),
                            ),
                          ],
                        ),
                ],
              ),
              SizedBox(
                height: 10 * theme.heightRatio,
              ),

              /// bottom button for device selection
              Selector<CurrentState, DeviceInfo>(
                  selector: (context, p1) => p1.currentDevice,
                  builder: (context, _, __) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ...List.generate(devices.length, (index) {
                          return CustomButton(
                            pressed: currentState.currentDevice ==
                                    devices[index].device
                                ? Pressed.pressed
                                : Pressed.notPressed,
                            animate: true,
                            borderRadius: 100,
                            isThreeD: true,
                            backgroundColor: Colors.black,
                            width: 37.5,
                            height: 37.5,
                            onPressed: () {
                              currentState.changeSelectedDevice(
                                devices[index].device,
                              );
                            },
                            child: Center(
                              child: Icon(
                                devices[index].icon,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                          );
                        })
                      ],
                    );
                  })
            ],
          ),
        ],
      ),
    );
  }
}
