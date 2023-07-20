import 'package:flutter/material.dart';

class DealOfTheDay extends StatefulWidget {
  const DealOfTheDay({super.key});

  @override
  State<DealOfTheDay> createState() => _DealOfTheDayState();
}

class _DealOfTheDayState extends State<DealOfTheDay> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: 10, top: 15),
          child: const Text(
            'Deal Of The Day',
            style: TextStyle(fontSize: 20),
          ),
        ),
        Image.network(
          'https://images.unsplash.com/photo-1649125233755-a649dfce95b7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDJ8TzN3QmM1OXp6Zjh8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=60',
          height: 235,
          fit: BoxFit.fitHeight,
        ),
        Container(
          padding: const EdgeInsets.only(left: 15,),
          alignment: Alignment.topCenter,
          child: const Text(
            '\$100', 
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 15,top: 5, right: 40),
          child: const Text(
            'Sahani',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network('https://images.unsplash.com/photo-1649125233755-a649dfce95b7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDJ8TzN3QmM1OXp6Zjh8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=60', fit: BoxFit.fitWidth, width: 100, height: 100,),
              Image.network('https://images.unsplash.com/photo-1649125233755-a649dfce95b7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDJ8TzN3QmM1OXp6Zjh8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=60', fit: BoxFit.fitWidth, width: 100, height: 100,),
              Image.network('https://images.unsplash.com/photo-1649125233755-a649dfce95b7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDJ8TzN3QmM1OXp6Zjh8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=60', fit: BoxFit.fitWidth, width: 100, height: 100,),
              Image.network('https://images.unsplash.com/photo-1649125233755-a649dfce95b7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDJ8TzN3QmM1OXp6Zjh8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=60', fit: BoxFit.fitWidth, width: 100, height: 100,),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 15,
          ).copyWith(left: 15),
          alignment: Alignment.topLeft,
          child: Text(
            'See all deals',
            style: TextStyle(color: Colors.cyan[800]),
          ),
        ),
      ],
    );
  }
}