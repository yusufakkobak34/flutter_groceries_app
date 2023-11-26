import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_groceries_app/common/color/color_extension.dart';
import 'package:flutter_groceries_app/model/offer/offer_product_model.dart';

class ProductCell extends StatelessWidget {
  final OfferProductModel pObj;
  final VoidCallback onPressed;
  final VoidCallback onCart;
  final double margin;
  final double weight;
  const ProductCell(
      {super.key,
      required this.pObj,
      required this.onPressed,
      this.weight = 180,
      this.margin = 8,
      required this.onCart});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: weight,
        margin: EdgeInsets.symmetric(horizontal: margin),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          border:
              Border.all(color: TColor.placeholder.withOpacity(0.5), width: 1),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              CachedNetworkImage(
                imageUrl: pObj.image ?? "",
                placeholder: (context,url) => const CircularProgressIndicator(),
                errorWidget: (context,url,error) => const Icon(Icons.error),
                width: 100,
                height: 80,
                fit: BoxFit.contain,
              ),
              ],
            ),
            const Spacer(),
            Text(
              pObj.name ?? "",
              style: TextStyle(
                color: TColor.primaryText,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              "${pObj.unitValue}${pObj.unitName}",
              style: TextStyle(
                color: TColor.secondaryText,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$${pObj.offerPrice ?? pObj.price}",
                  style: TextStyle(
                    color: TColor.primaryText,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                InkWell(
                  onTap: onCart,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: TColor.primary,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/img/add.png",
                      width: 15,
                      height: 15,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
