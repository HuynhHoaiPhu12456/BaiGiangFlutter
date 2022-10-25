import 'package:app_phone/EVN_login.dart';
import 'package:flutter/material.dart';

class EVNRegister extends StatelessWidget {
  EVNRegister({super.key});
  var userNameControler = TextEditingController();
  var passWordControler = TextEditingController();
  var confirmPassWordControler = TextEditingController();
  var formKey = GlobalKey<FormState>();
  String src = "assets/images/EVN_svg.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: SafeArea(
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      width: 200,
                      child: Form(
                        key: formKey,
                        child: Column(
                          children: [
                            Image.network(src),
                            Text(
                              "Đăng ký",
                              style: TextStyle(
                                color: Color.fromARGB(255, 4, 44, 77),
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 20),
                              child: TextFormField(
                                controller: userNameControler,
                                validator: (str) {
                                  if (str == null || str.isEmpty) {
                                    return "Tên người dùng không được rỗng";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                    border: new OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    label: Text("Tên người dùng"),
                                    hintText: "Nhập tên người dùng",
                                    prefixIcon: Icon(Icons.person)),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 20),
                              child: TextFormField(
                                controller: passWordControler,
                                validator: (str) {
                                  if (str == null || str.isEmpty) {
                                    return "Mật khẩu không được rỗng";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                    border: new OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    label: Text("Mật khẩu"),
                                    hintText: "Nhập mật khẩu",
                                    prefixIcon: Icon(Icons.key_rounded)),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 20),
                              child: TextFormField(
                                controller: confirmPassWordControler,
                                validator: (str) {
                                  if (str == null || str.isEmpty) {
                                    return "Vui lòng xác nhận lại mật khẩu";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                    border: new OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    label: Text("Xác nhận"),
                                    hintText: "Nhập lại mật khẩu",
                                    prefixIcon: Icon(Icons.key_sharp)),
                              ),
                            ),
                            Container(
                              width: 200,
                              height: 50,
                              padding: EdgeInsets.only(top: 20),
                              child: ElevatedButton(
                                onPressed: () {
                                  if (formKey.currentState!.validate()) {
                                    var userName = userNameControler.text;
                                    var passWord = passWordControler.text;
                                    var cfpassWord =
                                        confirmPassWordControler.text;
                                    print("Xin chào: ${userName}");
                                    print("Xin chào: ${passWord}");
                                    print("Xin chào: ${cfpassWord}");
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => EVNLogin(),
                                        ));
                                  } else {
                                    print("Dữ liệu nhập không chính xác");
                                  }
                                },
                                child: Text("Đăng ký"),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.orange,
                                    shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                              ),
                            ),
                            Container(
                              width: 200,
                              height: 50,
                              padding: EdgeInsets.only(top: 20),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => EVNLogin()));
                                },
                                child: Text("Trở lại đăng nhập"),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.orange,
                                    shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
