import 'package:app_phone/model/product_model.dart';
import 'package:app_phone/provider/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductListPage extends StatelessWidget {
  ProductListPage({super.key});

  @override
//   Widget build(BuildContext context) {
//     var provider = Provider.of<ProductProvider>(context);
//     provider.getProducts();
//     return Scaffold(
//       body: ListView(
//         scrollDirection: Axis.vertical,
//         children: [
//           ...provider.list.map((e) {
//             return Text(e.title ?? "");
//           }).toList()
//         ],
//       ),
//     );
//   }
// }

  Widget build(BuildContext context) {
    var provider = Provider.of<ProductProvider>(context);
    provider.getProducts();
    return Scaffold(
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        scrollDirection: Axis.vertical,
        children: [
          ...provider.list.map((e) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white60,
                        borderRadius: BorderRadius.circular(16)),
                    child: Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(e.image ?? ""),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Text(e.title ?? ""),
              ],
            );
          }).toList()
        ],
      ),
    );
  }
}
