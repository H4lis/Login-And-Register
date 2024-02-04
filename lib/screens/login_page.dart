import 'package:flutter/material.dart';
import 'package:login_and_register/shared/constant.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPasswordVisible = false;

  void togglePasswordVisibility() {
    setState(() {
      isPasswordVisible = !isPasswordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/bg_register.png',
            width: 279,
          ),
          ListView(
            children: [
              SizedBox(
                height: 130,
              ),
              Text(
                'Selamat Datang\nKembali!',
                style: semiBold.copyWith(fontSize: 28),
                textAlign: TextAlign.center,
              ),
              Image.asset(
                'assets/images/studying.png',
                height: 231,
              ),
              SizedBox(
                height: 41,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 43),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      cursorColor: purple,
                      decoration: InputDecoration(
                          hintText: 'Alamat Email',
                          hintStyle: light.copyWith(fontSize: 17),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 16, horizontal: 16),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          )),
                    ),
                    SizedBox(
                      height: 26,
                    ),
                    TextField(
                      cursorColor: purple,
                      obscureText: isPasswordVisible,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: light.copyWith(fontSize: 17),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            togglePasswordVisibility();
                          },
                          icon: Icon(isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off),
                          color: grey,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 19,
                    ),
                    Text(
                      "Lupa Password",
                      style: bold.copyWith(color: purple),
                    ),
                    SizedBox(
                      height: 42,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Masuk",
                        style: bold.copyWith(color: Colors.white, fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: purple,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          minimumSize: Size(double.infinity, 64)),
                    ),
                    SizedBox(
                      height: 27,
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Belum Memiliki Akun? ",
                            style: regular.copyWith(fontSize: 15),
                          ),
                          Text(
                            "Daftar",
                            style:
                                semiBold.copyWith(color: purple, fontSize: 15),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
