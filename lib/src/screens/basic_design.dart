import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //* Imagen superior
          Image(image: AssetImage('assets/landscape.jpg')),

          //* Título
          Title(),

          //*Botonera
          BottomSection(),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            child: const Text(
                'Non magna occaecat ut aute aliqua. Et ea fugiat ea pariatur. Consectetur do deserunt mollit amet aute cillum aute cillum excepteur pariatur. Cillum in ea tempor sit aliquip nostrud in esse id.'),
          )
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Oeschinen lake campground',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(color: Colors.black45, fontSize: 15),
              ),
            ],
          ),
          //* Se expande todo lo que pueda dejando al resto de widget solo el
          //* espacio justo que necesitan
          Expanded(child: Container()),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41', style: TextStyle(color: Colors.red, fontSize: 15)),
        ],
      ),
    );
  }
}

class BottomSection extends StatelessWidget {
  const BottomSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CustomButton(
            title: 'CALL',
            icon: Icons.phone,
          ),
          CustomButton(
            title: 'ROUTE',
            icon: Icons.room_outlined,
          ),
          CustomButton(
            title: 'SHARE',
            icon: Icons.share,
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String title;

  final IconData icon;

  const CustomButton({Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() => Navigator.pushNamed(context, 'scrollScreen')),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.blue,
            size: 30,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: const TextStyle(color: Colors.blue, fontSize: 19),
          ),
        ],
      ),
    );
  }
}
