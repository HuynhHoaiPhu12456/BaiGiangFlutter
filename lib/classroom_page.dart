import 'package:flutter/material.dart';

class ClassroomPage extends StatelessWidget {
  ClassroomPage({super.key});

  List<Map<String, String>> list = [
    {
      "anh": "assets/images/img_backtoschool.jpg",
      "tenmon": "[2021-2022.2]-Thực tập viết niên luận - Nhóm 3",
      "mamon": "2021-2022.2.TIN3142.003",
      "siso": "7 học viên"
    },
    {
      "anh": "assets/images/img_code.jpg",
      "tenmon": "[2021-2022.2]- Công nghệ XML - Nhóm 1",
      "mamon": "2021-2022.2.TIN4412.001",
      "siso": "10 học viên"
    },
    {
      "anh": "assets/images/img_graduation.jpg",
      "tenmon": "[2021-2022.2]-Lập trình Front - End - Nhóm 12",
      "mamon": "2021-2022.2.TIN3092.012",
      "siso": "36 học viên"
    },
    {
      "anh": "assets/images/img_learnlanguage.jpg",
      "tenmon": "[2021-2022.2]-Lập trình Front - End - Nhóm 11",
      "mamon": "2021-2022.2.TIN3092.011",
      "siso": "36 học viên"
    },
    {
      "anh": "assets/images/img_reachout.jpg",
      "tenmon": "[2021-2022.2]-Lập trình Front - End - Nhóm 10",
      "mamon": "2021-2022.2.TIN3092.010",
      "siso": "35 học viên"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
          size: 40,
        ),
        title: const Text(
          "Google Lớp học",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
              child: Column(
            children: [
              ...list.map((e) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(e.values.first.toString()),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 15, 100, 15),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Icon(Icons.more_horiz, size: 10, color: Colors.white),
                          Text(
                            e.values.elementAt(1).toString(),
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            e.values.elementAt(2).toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                            child: Text(
                              e.values.elementAt(3).toString(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ]),
                  ),
                );
              })
            ],
          ))
        ]),
      ),
    );
  }
}
