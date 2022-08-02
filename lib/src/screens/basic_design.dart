import 'dart:ffi';

import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
   
  const BasicDesignScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Image
          const Image(
            image: AssetImage('assets/main_image.jpg')
            ),

          //Title
          const _Title(),

          //options
          const _Btns(),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            
            child: const Text('Reprehenderit nisi commodo ex exercitation est aliquip id. Incididunt aliquip excepteur veniam minim non dolore do dolore mollit. Culpa laboris consequat sint culpa non cillum anim officia. Ipsum sunt dolor laboris esse. Amet labore excepteur non nostrud est ea ea ullamco sit eiusmod reprehenderit anim. Non consequat pariatur amet duis dolore minim aute ut voluptate cupidatat est velit. Commodo laboris nostrud incididunt fugiat.',
            ),
          )

        ],
      ),
    );
  }
}

class _Btns extends StatelessWidget {
  const _Btns({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          _BtnOptions(icon: Icons.call, text:'CALL'),
          _BtnOptions(icon: Icons.navigation, text:'ROUTE'),
          _BtnOptions(icon: Icons.share, text:'SHARE')
        ],
      ),
    );
  }
}

class _BtnOptions extends StatelessWidget {

  final IconData icon;
  final String text;

  const _BtnOptions({
    Key? key, 
    required this.icon, 
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue),
        Text(text, style:const TextStyle(color:Colors.blue)),
      ],
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:const  [
              Text('Auroras boreales', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Alaska', style: TextStyle(color: Colors.grey)),
            ],
          ),
          Expanded(child: Container()),
          const Icon(Icons.star, color: Colors.red),
          const Text('41')
        ],
      ),
    );
  }
}