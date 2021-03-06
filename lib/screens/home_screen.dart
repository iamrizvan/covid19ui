import 'dart:ui';
import 'package:covid19ui/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/info_card.dart';
import './details_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(),
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding:
                  EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 40),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(0.03),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50))),
              child: Wrap(
                runSpacing: 20,
                spacing: 20,
                children: <Widget>[
                  InfoCard(
                    title: "Confirmed Cases",
                    iconColor: Color(0xFFFF8C00),
                    effectedNum: 1062,
                    press: (){
                       Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context)
                          {
                             return DetailsScreen();
                          }
                        ));
                    },
                  ),
                  InfoCard(
                    title: "Deaths",
                    iconColor: Color(0xFFFF2D55),
                    effectedNum: 75,
                    press: (){
                       Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context)
                          {
                             return DetailsScreen();
                          }
                        ));
                    },
                  ),
                  InfoCard(
                    title: "Recovered",
                    iconColor: Color(0xFF50E3C2),
                    effectedNum: 689,
                    press: (){
                       Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context)
                          {
                             return DetailsScreen();
                          }
                        ));
                    },
                  ),
                  InfoCard(
                    title: "New Cases",
                    iconColor: Color(0xFF5856D6),
                    effectedNum: 115,
                    press: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context)
                          {
                             return DetailsScreen();
                          }
                        ));
                    },
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Preventions",
                      style: Theme.of(context)
                          .textTheme
                          .title
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    buildPrevention(),
                    SizedBox(
                      height: 40,
                    ),
                    buildHelpCard(context),
                    SizedBox(
                      height: 120,
                    )
                  ],
                )))
          ],
        )));
  }

  // Build the Appbar
  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor.withOpacity(0.03),
      elevation: 0,
      leading: IconButton(
          icon: SvgPicture.asset("assets/icons/menu.svg"), onPressed: () {}),
      actions: <Widget>[
        IconButton(
            icon: SvgPicture.asset("assets/icons/search.svg"),
            onPressed: () {}),
      ],
    );
  }
}

Widget buildPrevention() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      PreventionCards(
        svgSrc: "assets/icons/hand_wash.svg",
        title: "Wash Hands",
      ),
      PreventionCards(
        svgSrc: "assets/icons/use_mask.svg",
        title: "Wear Mask",
      ),
      PreventionCards(
        svgSrc: "assets/icons/Clean_Disinfect.svg",
        title: "Clean Disinfect",
      ),
    ],
  );
}

Widget buildHelpCard(BuildContext context) {
  return Container(
    height: 150,
    width: double.infinity,
    child: Stack(
      alignment: Alignment.bottomLeft,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
              // padding 40% from left
              left: MediaQuery.of(context).size.width * 0.4,
              top: 20,
              right: 20),
          height: 125,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xFF60BE93),
                Color(0xFF1B8D59),
              ]),
              borderRadius: BorderRadius.circular(20)),
          child: RichText(
              text: TextSpan(children: [
            TextSpan(
                text: "Dial 999 for \nMedical Help!\n",
                style: Theme.of(context)
                    .textTheme
                    .title
                    .copyWith(color: Colors.white)),
            TextSpan(
                text: "If any symptoms appear",
                style: TextStyle(color: Colors.white.withOpacity(0.7)))
          ])),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SvgPicture.asset("assets/icons/nurse.svg"),
        ),
        Positioned(
            top: 30,
            right: 10,
            child: SvgPicture.asset("assets/icons/virus.svg"))
      ],
    ),
  );
}

class PreventionCards extends StatelessWidget {
  final String svgSrc;
  final String title;
  const PreventionCards({Key key, this.svgSrc, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SvgPicture.asset(svgSrc),
        Text(title,
            style: Theme.of(context)
                .textTheme
                .body2
                .copyWith(color: kPrimaryColor))
      ],
    );
  }
}
