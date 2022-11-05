import 'package:app_phone/card_page.dart';
import 'package:app_phone/model/product_model.dart';
import 'package:app_phone/product_detail_page.dart';
import 'package:app_phone/provider/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
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
    List<ProductModel> listproduct = [];
    if (!provider.searchlist.isEmpty) {
      listproduct = provider.searchlist;
    } else {
      listproduct = provider.list;
    }
    return Scaffold(
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        scrollDirection: Axis.vertical,
        children: [
          ...listproduct.map((e) {
            return Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductDetail(e))),
                    child: Container(
                      margin: EdgeInsets.only(bottom: 5),
                      child: Image.network(e.image ?? "",
                          width: 100, height: 80, fit: BoxFit.contain),
                    ),
                  ),
                  Text(
                    e.title ?? "",
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 8,
                        color: Colors.black),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Price: ${e.price}',
                              style: const TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              child: ElevatedButton(
                                child: Icon(
                                  Icons.shopping_bag_outlined,
                                  size: 15,
                                ),
                                onPressed: () {
                                  provider.cardlist.add(e);
                                },
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  // Expanded(
                  //   child: Row(
                  //     children: [
                  //       RatingBar.builder(
                  //         initialRating: e.rating?.rate ?? 0,
                  //         itemSize: 20,
                  //         itemCount: 5,
                  //         ignoreGestures: true,
                  //         allowHalfRating: true,
                  //         unratedColor: Colors.grey,
                  //         onRatingUpdate: (rating) => print(rating),
                  //         itemBuilder: (context, _) => const Icon(
                  //           Icons.star,
                  //           color: Colors.amber,
                  //         ),
                  //       ),
                  //       SizedBox(
                  //         width: 5,
                  //       ),
                  //       Text(
                  //         "${e.rating?.rate ?? 0.0}",
                  //         style: TextStyle(fontSize: 10),
                  //       )
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            );
          })
        ],
      ),
    );
  }
}
