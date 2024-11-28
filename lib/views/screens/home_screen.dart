import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../widgets/home_screen_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var icon = Icons.person;
    const title = "2.96M Active User";
    const description = "Exceptional Service";
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Row(
          children: [
            Text(
              "Oppo",
            ),
            Icon(Icons.check_circle)
          ],
        ),
        actions: [const Icon(Icons.menu)],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Ratings
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: blueColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 13, vertical: 6),
                    child: Icon(Icons.star),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "5.0",
                        style: TextStyle(
                            color: white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Text("Rated on Trustpilot",
                          style: TextStyle(
                            color: grey,
                            fontSize: 20,
                          )),
                    ],
                  ),
                )
              ],
            ),
            Text(
              "94%",
              style: TextStyle(
                color: white,
                fontSize: 156, /*  fontWeight: FontWeight.bold */
              ),
            ),
            Text("Enjoy The Versality Of Oppo Corporate Cards",
                style: TextStyle(
                  color: grey,
                  fontSize: 30,
                )),

            HomeScreenContainer(
              icon: icon,
              title: title,
              description: description,
              color: blueColor,
            ),

            const SizedBox(
              height: 10,
            ),
            HomeScreenContainer(
              icon: Icons.card_membership_outlined,
              title: "100% Payment Credit",
              description: "30+ Bank Limited",
              color: skinColor,
            )
          ],
        ),
      ),
    );
  }
}
