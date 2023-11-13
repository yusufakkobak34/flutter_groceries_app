import 'package:flutter/material.dart';
import 'package:flutter_groceries_app/common/color/color_extension.dart';

class CartItemRow extends StatelessWidget {
  final Map pObj;

  const CartItemRow({
    super.key,
    required this.pObj,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 120,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  pObj['icon'],
                  width: 70,
                  height: 65,
                  fit: BoxFit.contain,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        pObj['name'],
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
                        "${pObj["unit"]}",
                        style: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: TColor.primary,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/img/close.png",
                    width: 15,
                    height: 15,
                    color: TColor.primary,
                  ),
                ),
              ],
            ),
            const Spacer(),
            const Spacer(),
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: TColor.placeholder.withOpacity(0.5),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/img/subtack.png",
                      width: 20,
                      height: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  pObj['qty'].toString(),
                  style: TextStyle(
                    color: TColor.primaryText,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: TColor.placeholder.withOpacity(0.5),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/img/add_green.png",
                      width: 20,
                      height: 20,
                    ),
                  ),
                ),
                const Spacer(),
                Text(
                  "\$${pObj["price"]}",
                  style: TextStyle(
                    color: TColor.primaryText,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
