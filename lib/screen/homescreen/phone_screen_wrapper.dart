import 'package:awesome_portfolio/screen/homescreen/phone_home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../providers/current_state.dart';
import '../../providers/theme_provider.dart';
import '../phone_screen/theame/theame_screen.dart';

class ScreenWrapper extends StatelessWidget {
  final Widget childG;
  const ScreenWrapper({super.key, required this.childG});

  @override
  Widget build(BuildContext context) {
    CurrentState instance = Provider.of<CurrentState>(context, listen: false);
    ThemeProvider theme = Provider.of<ThemeProvider>(context, listen: false);

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: theme.size.width < 700 && instance.isMainScreen
          ? AppBar(
              backgroundColor: Colors.transparent,
              leading: Builder(builder: (context) {
                return IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                );
              }),
            )
          : null,
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: const Text("Home"),
              onTap: () {
                instance.changePhoneScreen(
                  const PhoneHomeScreen(),
                  true,
                );
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("Change Theame"),
              onTap: () {
                instance.changePhoneScreen(const TheameScreenPhone(), false,
                    titlee: "Change Theame");
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // here can show the appbar

            Consumer<CurrentState>(builder: (context, _, __) {
              if (!instance.isMainScreen) {
                return Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.3),
                    border: Border.all(color: Colors.black.withOpacity(0.4)),
                  ),
                  padding: const EdgeInsets.only(top: 5),
                  // height: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0, right: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          instance.title ?? "",
                          style: GoogleFonts.inter(fontSize: 18),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.close,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            print("object");
                            instance.changePhoneScreen(
                              const PhoneHomeScreen(),
                              true,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                );
              }
              return Container();
            }),
            Expanded(
              child: Container(
                // padding: const EdgeInsets.only(top: 10),
                child: childG,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
