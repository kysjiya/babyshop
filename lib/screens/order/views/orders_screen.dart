import 'package:flutter/material.dart';
import 'package:shop/screens/order/views/components/order_status_card.dart';
import 'package:shop/screens/order/views/components/order_process.dart';
import 'package:shop/constants.dart';

import '../../../models/product_model.dart';
import 'components/history_card.dart';

class OrdersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: Text("Orders"),
        elevation: 0,
        centerTitle: true,
        leading:  SizedBox(
                    width: 40,
                    child: BackButton(color: whiteColor,),
                  ),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: CustomScrollView(
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.only(top: defaultPadding),
                sliver: SliverToBoxAdapter(
                  child: 
                  Padding(
        padding: const EdgeInsets.all(16.0),
        child: OrderStatusCard(
          orderId: 'FDS639820',
          placedOn: 'Dec 29, 2024',
          orderStatus: OrderProcessStatus.done,
          processingStatus: OrderProcessStatus.done,
          packedStatus: OrderProcessStatus.notDoneYeat,
          shippedStatus: OrderProcessStatus.notDoneYeat,
          deliveredStatus: OrderProcessStatus.notDoneYeat,
        ),
      ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => Padding(
                    padding: const EdgeInsets.only(top: defaultPadding),
                    child: HistoryCard(
                    
                      products: [
                        ProductModel(
                          image: productDemoImg1,
                          title: "Mountain Warehouse for Women",
                          brandName: "Lipsy london",
                          price: 540,
                          priceAfetDiscount: 420,
                          dicountpercent: 20,
                        ),
                        ProductModel(
                          image: productDemoImg4,
                          title: "Mountain Beta Warehouse",
                          brandName: "Lipsy london",
                          price: 800,
                        ),
                        ProductModel(
                          image: productDemoImg4,
                          title: "Mountain Beta Warehouse",
                          brandName: "Lipsy london",
                          price: 800,
                        ),
                        ProductModel(
                          image: productDemoImg4,
                          title: "Mountain Beta Warehouse",
                          brandName: "Lipsy london",
                          price: 800,
                        ),
                        ProductModel(
                          image: productDemoImg4,
                          title: "Mountain Beta Warehouse",
                          brandName: "Lipsy london",
                          price: 800,
                        ),
                      ],
                       isReturn: index == 1,
                       date: "JUN 12, 2020",
                      amount: 129,
                    ),
                  ),
                  childCount: 1,
                ),
              )
            ],
          ),
        ),
    );
  }
}
