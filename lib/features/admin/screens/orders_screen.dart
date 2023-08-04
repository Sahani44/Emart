import 'package:emart/common/widgets/loader.dart';
import 'package:emart/features/account/widgets/single_product.dart';
import 'package:emart/features/admin/services/admin_services.dart';
import 'package:emart/features/order_details/screens/order_details_screen.dart';
import 'package:emart/models/order.dart';
import 'package:flutter/material.dart';

import '../../account/services/account_services.dart';
import '../../account/widgets/account_button.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  List<Order>? orders;
  final AdminServices adminServices = AdminServices();

  @override
  void initState() {
    super.initState();
    fetchOrders();
  }

  void fetchOrders() async {
    orders = await adminServices.fetchAllOrders(context);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10,),
        Row(
          children: [
            AccountButton(
              text: 'Log Out', 
              onTap: () => AccountServices().logOut(context),
            ),
          ],
        ),
        orders == null
        ? const Loader()
        : Container(
          height: 617,
            padding: const EdgeInsets.only(
              left: 10,
              top: 20,
              right: 0,
            ),
          child: ListView.builder(
              itemCount: orders!.length,
              itemBuilder: (context, index) {
                final orderData = orders![index];
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      OrderDetailScreen.routeName,
                      arguments: orderData,
                    );
                  },
                  child: SizedBox(
                    height: 140,
                    child: SingleProduct(
                      image: orderData.products[0].images[0],
                    ),
                  ),
                );
              },
            ),
        ),
      ],
    );
  }
}
