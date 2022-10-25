import 'package:app_phone/EVN_register.dart';
import 'package:flutter/material.dart';

class EVNLogin extends StatelessWidget {
  EVNLogin({super.key});
  var userNameController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  String src = "assets/images/EVN_svg.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: (Container(
          width: 200,
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Column(
                  children: [
                    Image.network(src),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Đăng nhập",
                      style: TextStyle(
                        color: Color.fromARGB(255, 4, 44, 77),
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Container(
                      width: 700,
                      padding: EdgeInsets.only(top: 20),
                      child: TextFormField(
                        controller: userNameController,
                        validator: (str) {
                          if (str == null || str.isEmpty)
                            return "Tên đăng nhập không được rỗng";
                          return null;
                        },
                        decoration: InputDecoration(
                            border: new OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)),
                            hintText: "Vui lòng nhập tên đăng nhập",
                            label: Text("Tên đăng nhập"),
                            prefixIcon: Icon(Icons.person)),
                      ),
                    ),
                    Container(
                      width: 1000,
                      padding: EdgeInsets.only(top: 20),
                      child: TextFormField(
                        controller: passwordController,
                        validator: (str) {
                          if (str == null || str.isEmpty)
                            return "Mật khẩu không được rỗng";
                          return null;
                        },
                        decoration: InputDecoration(
                            border: new OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)),
                            hintText: "Vui lòng nhập mật khẩu",
                            label: Text("Mật khẩu"),
                            prefixIcon: Icon(Icons.key)),
                      ),
                    ),
                    Container(
                      width: 700,
                      padding: EdgeInsets.only(top: 20),
                      child: ElevatedButton(
                        child: Text("Đăng nhập"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0),
                          ),
                          textStyle: TextStyle(fontSize: 15),
                        ),
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            var userName = userNameController.text;
                            var passWord = passwordController.text;
                            print("Xin chào: ${userName}");
                            print("Xin chào: ${passWord}");
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EVNRegister(),
                                ));
                          } else {
                            print("Dữ liệu nhập không chính xác");
                          }
                        },
                      ),
                    ),
                    Container(
                      width: 700,
                      padding: EdgeInsets.only(top: 20),
                      child: ElevatedButton(
                        child: Text("Đăng ký"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0),
                          ),
                          textStyle: TextStyle(fontSize: 15),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EVNRegister(),
                              ));
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
