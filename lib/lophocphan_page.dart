import 'package:app_phone/model/lophocphan_model.dart';
import 'package:flutter/material.dart';

class LopHocPhanPage extends StatelessWidget {
  const LopHocPhanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...ls.map((e) {
              return Container(
                margin: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(e.hinhNen ?? ""), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        e.tenLopHocPhan ?? "",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        e.maLopHocPhan ?? "",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      Text(
                        "${e.soLuongSinhVien ?? 0} học viên",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
