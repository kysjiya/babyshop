import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop/components/product/secondary_product_card.dart';
import 'package:shop/constants.dart';
import 'package:shop/route/route_constants.dart';

class HistoryCard extends StatefulWidget {
  const HistoryCard({
    super.key,
    this.isReturn = false,
    required this.date,
    required this.amount,
    required this.products,
  });

  final bool isReturn;
  final String date;
  final double amount;
  final List products;

  @override
  State<HistoryCard> createState() => _WalletHistoryCardState();
}

class _WalletHistoryCardState extends State<HistoryCard> {
  late List<bool> selectedProducts; 

  @override
  void initState() {
    super.initState();
    selectedProducts = List<bool>.filled(widget.products.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius:
            const BorderRadius.all(Radius.circular(defaultBorderRadious)),
        // border: Border.all(color: Theme.of(context).dividerColor),
      ),
      child: Column(
        children: [
          const SizedBox(height: defaultPadding),
          ...List.generate(
            widget.products.length,
            (index) => Padding(
              padding: const EdgeInsets.only(
                bottom: defaultPadding,
                left: defaultPadding,
                right: defaultPadding,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: SecondaryProductCard(
                      image: widget.products[index].image,
                      brandName: widget.products[index].brandName,
                      title: widget.products[index].title,
                      price: widget.products[index].price,
                      priceAfetDiscount:
                          widget.products[index].priceAfetDiscount,
                      style: ElevatedButton.styleFrom(
                        maximumSize: const Size(double.infinity, 90),
                        padding: EdgeInsets.zero,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
        ],
      ),
    );
  }
}
