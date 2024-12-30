import 'package:flutter/material.dart';
import 'package:shop/constants.dart';
import 'package:shop/models/product_model.dart';
import 'components/wallet_history_card.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: CustomScrollView(
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.only(top: defaultPadding),
                sliver: SliverToBoxAdapter(
                  child: 
                  Center(
                    child: Text(
                      "Review Your Cart",
                      style: Theme.of(context).textTheme.bodyMedium!.
                      copyWith(fontSize: 20),
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => Padding(
                    padding: const EdgeInsets.only(top: defaultPadding),
                    child: WalletHistoryCard(
                    
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
      ),
    );
  }
}
