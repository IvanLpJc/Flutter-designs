import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(
            color: Colors.blue,
            icon: Icons.border_all,
            text: 'General',
          ),
          _SingleCard(
            color: Colors.pinkAccent,
            icon: Icons.car_rental,
            text: 'Transport',
          )
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.orange,
            icon: Icons.dnd_forwardslash,
            text: 'General',
          ),
          _SingleCard(
            color: Colors.green,
            icon: Icons.add_ic_call_sharp,
            text: 'Transport',
          )
        ]),
        TableRow(children: [
          _SingleCard(
            color: Color.fromARGB(255, 4, 150, 125),
            icon: Icons.local_activity,
            text: 'General',
          ),
          _SingleCard(
            color: Color.fromARGB(255, 46, 16, 26),
            icon: Icons.car_rental,
            text: 'Transport',
          )
        ]),
        TableRow(children: [
          _SingleCard(
            color: Color.fromARGB(255, 14, 28, 39),
            icon: Icons.portable_wifi_off,
            text: 'General',
          ),
          _SingleCard(
            color: Color.fromARGB(255, 187, 255, 0),
            icon: Icons.ad_units,
            text: 'Transport',
          )
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard(
      {Key? key, required this.icon, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, 'basicDesign'),
      child: Container(
        margin: const EdgeInsets.all(23),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(62, 66, 107, 0.7),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: color,
                      child: Icon(
                        icon,
                        size: 40,
                      ),
                      radius: 30,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      text,
                      style: TextStyle(color: color, fontSize: 22),
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
