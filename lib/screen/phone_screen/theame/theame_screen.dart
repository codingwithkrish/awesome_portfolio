import 'package:awesome_portfolio/consts/data.dart';
import 'package:awesome_portfolio/providers/current_state.dart';
import 'package:awesome_portfolio/providers/theme_provider.dart';
import 'package:awesome_portfolio/widgets/frosted_container.dart';
import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TheameScreenPhone extends StatefulWidget {
  const TheameScreenPhone({super.key});

  @override
  State<TheameScreenPhone> createState() => _TheameScreenPhoneState();
}

class _TheameScreenPhoneState extends State<TheameScreenPhone> {
  @override
  Widget build(BuildContext context) {
    CurrentState currentState =
        Provider.of<CurrentState>(context, listen: false);
    ThemeProvider theme = Provider.of<ThemeProvider>(context, listen: false);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Transform(
            transform: Matrix4.identity()..setEntry(3, 2, 0.01),
            alignment: Alignment.bottomCenter,
            child: FrostedWidget(
              height: 395 * theme.heightRatio,
              width: theme.size.width * 0.8,
              childW: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Wrap(
                    children: [
                      ...List.generate(
                        colorPalette.length,
                        (index) =>
                            Consumer<CurrentState>(builder: (context, _, __) {
                          return CustomButton(
                            margin: const EdgeInsets.all(10),
                            pressed: currentState.selectedColor == index
                                ? Pressed.pressed
                                : Pressed.notPressed,
                            animate: true,
                            borderRadius: 100,
                            shadowColor: Colors.blueGrey[50],
                            isThreeD: true,
                            backgroundColor: colorPalette[index].color,
                            width: 250 * theme.widthRatio,
                            height: 250 * theme.widthRatio,
                            onPressed: () {
                              currentState.changeGradient(index);
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
        ),
      ],
    );
  }
}
