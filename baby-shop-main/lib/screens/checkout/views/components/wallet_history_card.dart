import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop/components/product/secondary_product_card.dart';
import 'package:shop/constants.dart';
import 'package:shop/route/route_constants.dart';

class WalletHistoryCard extends StatefulWidget {
  const WalletHistoryCard({
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
  State<WalletHistoryCard> createState() => _WalletHistoryCardState();
}

class _WalletHistoryCardState extends State<WalletHistoryCard> {
  late List<bool> selectedProducts; // Track selection status

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
                  Checkbox(
                    checkColor: whiteColor,
                    activeColor: primaryColor,
                    value: selectedProducts[index],
                    onChanged: (bool? value) {
                      setState(() {
                        selectedProducts[index] = value ?? false;
                      });
                    },
                  ),
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
                  IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      setState(() {
                        widget.products.removeAt(index);
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          const Divider(height: 1),
          ListTile(
            minLeadingWidth: 24,
            leading: SvgPicture.asset(
              widget.isReturn
                  ? "assets/icons/Return.svg"
                  : "assets/icons/Product.svg",
              color: Theme.of(context).iconTheme.color,
              height: 24,
              width: 24,
            ),
            title: const Text("Subtotal"),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: defaultPadding / 4),
              child: Text(
                widget.isReturn
                    ? "+ \$${widget.amount.toStringAsFixed(2)}"
                    : "- \$${widget.amount.toStringAsFixed(2)}",
                style: TextStyle(
                  fontSize: 12,
                  color: Theme.of(context).textTheme.bodyMedium?.color,
                ),
              ),
            ),
            trailing: Container(
              width: 100,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  final selectedItems = widget.products
                      .asMap()
                      .entries
                      .where((entry) => selectedProducts[entry.key])
                      .map((entry) => entry.value)
                      .toList();
                  // Handle selected items for checkout
                  print("Selected Items: $selectedItems");
                  Navigator.pushNamed(context, cart2ScreenRoute);
                },
                child: const Text(
                  "Checkout",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
