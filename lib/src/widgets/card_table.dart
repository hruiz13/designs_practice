import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Table(
      children: const[
        TableRow(
          children: [
            _SingleCard(text: 'General', icon: Icons.border_all, color: Colors.blue),
            _SingleCard(text: 'Transport', icon: Icons.car_rental, color: Colors.pinkAccent),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(text: 'Shopping', icon: Icons.shop, color: Colors.purple),
            _SingleCard(text: 'Bill', icon: Icons.monetization_on, color: Colors.purpleAccent),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(text: 'Cloud', icon: Icons.cloud, color: Colors.deepPurple),
            _SingleCard(text: 'Grocery', icon: Icons.food_bank, color: Colors.pinkAccent),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(text: 'General', icon: Icons.border_all, color: Colors.blue),
            _SingleCard(text: 'Transport', icon: Icons.car_rental, color: Colors.pinkAccent),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(text: 'Shopping', icon: Icons.shop, color: Colors.purple),
            _SingleCard(text: 'Bill', icon: Icons.monetization_on, color: Colors.purpleAccent),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(text: 'Cloud', icon: Icons.cloud, color: Colors.deepPurple),
            _SingleCard(text: 'Grocery', icon: Icons.food_bank, color: Colors.pinkAccent),
          ]
        ),
      ],
    );
    
  }
}

class _SingleCard extends StatelessWidget {

  final IconData icon;
  final Color color;
  final String text;


  const _SingleCard(
    {Key? key, 
    required this.icon, 
    required this.color, 
    required this.text
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _CardBackground(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: color,
              radius: 30,
              child: Icon(icon, size: 35, color:Colors.white),
            ),
            const SizedBox(height: 10,),
            Text(text, style: TextStyle(color:color, fontWeight: FontWeight.bold, fontSize: 18))
          ],
        )
      );
  }
}

class _CardBackground extends StatelessWidget {

  final Widget child;

  const _CardBackground(
    {
    Key? key, 
    required this.child
    }
    ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20)
            ),
            child: child,
          ),
        ),
      ),
    );

    
  }
}