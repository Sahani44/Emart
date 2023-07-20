import 'package:emart/constants/global_variables.dart';
import 'package:emart/features/account/widgets/single_product.dart';
import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {

   List list = [
    'https://images.unsplash.com/photo-1688966838599-05e6cf6628cf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=1000&q=60',
    'https://images.unsplash.com/photo-1688966838599-05e6cf6628cf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=1000&q=60',
    'https://images.unsplash.com/photo-1688966838599-05e6cf6628cf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=1000&q=60',
    'https://images.unsplash.com/photo-1688966838599-05e6cf6628cf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=1000&q=60',
   ];


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15),
              child: const Text(
                'Your Orders', 
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
            ),
            Container(
              padding: const EdgeInsets.only(right: 15),
              child: Text(
                'See All', 
                style: TextStyle(color: GlobalVariables.selectedNavBarColor,),),
            )
          ],
        ),
        Container(
          height: 170,
          padding: const EdgeInsets.only(left: 10,top: 20,right: 0),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: list.length,
            itemBuilder: (context, index) {
              return SingleProduct(image: list[index],);
            } 
          ),
        ),
      ],
    );
  }
} 