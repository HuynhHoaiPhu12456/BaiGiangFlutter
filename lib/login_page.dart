import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  var userNameController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Text(
                  "Đăng nhập hệ thống",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Tên đăng nhập không được để trống";
                    } else {
                      return null;
                    }
                  },
                  controller: userNameController,
                  decoration: const InputDecoration(
                      hintText: "Vui lòng nhập tên đăng nhập",
                      label: Text("Tên đăng nhập"),
                      prefixIcon: Icon(Icons.person)),
                ),
                ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        var userName = userNameController.text;
                        var snackBar = SnackBar(
                          content: Text("Xin chào: ${userName}"),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(20),
                      child: Text(
                        "Đăng nhập",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.deepOrange,
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
