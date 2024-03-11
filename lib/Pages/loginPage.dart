import 'package:d_view/d_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_applogin/Config/app_asset.dart';
import 'package:my_applogin/Config/app_color.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppAssets.background),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.fromLTRB(40, 217, 40, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "employee",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.dasar),
                  textAlign: TextAlign.start,
                ),
                // ignore: deprecated_member_use
                DView.spaceHeight(4),
                Text(
                  "PT. HEXATECH",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: AppColors.dasar),
                  textAlign: TextAlign.start,
                ),
              ],
            )
            // ignore: deprecated_member_use
            ),
        Padding(
          padding: const EdgeInsets.fromLTRB(40, 604, 40, 0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FormLogin()));
                  },
                  child: Container(
                    height: 47,
                    width: 310,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                    child: Text(
                      "Masuk",
                      style:
                          TextStyle(fontSize: 14, color: AppColors.background),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                // ignore: deprecated_member_use
                DView.spaceHeight(20),
                Container(
                  height: 47,
                  width: 310,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: AppColors.background,
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      border: Border.all(color: AppColors.dasar)),
                  child: Text(
                    "Daftar",
                    style: TextStyle(fontSize: 14, color: AppColors.dasar),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}

class FormLogin extends StatefulWidget {
  const FormLogin({super.key});

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return AppColors.background_text;
    }

    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppAssets.login_background),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 260, 15, 0),
            child: Center(
              child: Column(
                children: [
                  Text(
                    "Welcome Back",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: AppColors.dasar),
                  ),
                  Text(
                    "Login to your account",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: AppColors.dasar),
                  ),
                  // ignore: deprecated_member_use
                  DView.spaceHeight(48),
                  Container(
                    height: 385,
                    width: 437,
                    decoration: BoxDecoration(
                        color: AppColors.dasar,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        border: Border.all(color: AppColors.dasar)),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(25, 50, 25, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "User Name",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.normal),
                            textAlign: TextAlign.start,
                          ),
                          // ignore: deprecated_member_use
                          DView.spaceHeight(13),
                          Center(
                            child: SizedBox(
                              width: 310,
                              height: 45,
                              child: TextField(
                                autofocus: false,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: AppColors.background_text,
                                  contentPadding: const EdgeInsets.only(
                                      left: 14.0, bottom: 8.0, top: 8.0),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // ignore: deprecated_member_use
                          DView.spaceHeight(15),
                          Text(
                            "Password",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.normal),
                            textAlign: TextAlign.start,
                          ),
                          // ignore: deprecated_member_use
                          DView.spaceHeight(13),
                          Center(
                            child: SizedBox(
                              width: 310,
                              height: 45,
                              child: TextField(
                                obscureText: true,
                                autofocus: false,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: AppColors.background_text,
                                  contentPadding: const EdgeInsets.only(
                                      left: 14.0, bottom: 8.0, top: 8.0),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // ignore: deprecated_member_use
                          DView.spaceHeight(18),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Wrap(
                                direction: Axis.horizontal,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                spacing: -10,
                                children: [
                                  Checkbox(
                                      checkColor: Colors.white,
                                      fillColor:
                                          MaterialStateProperty.resolveWith(
                                              getColor),
                                      value: isChecked,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          isChecked = value!;
                                        });
                                      }),
                                  const Text("Ingat Saya"),
                                ],
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Lupa Password",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ],
                          ),
                          Container(
                            height: 47,
                            width: 310,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: AppColors.background,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                                border: Border.all(color: AppColors.dasar)),
                            child: Text(
                              "Masuk",
                              style: TextStyle(
                                  fontSize: 14, color: AppColors.dasar),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Center(
                            child: Wrap(
                              spacing: -13,
                              direction: Axis.horizontal,
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [
                                Text(
                                  "Apakah Anda Belum Punya Akun?",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal),
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Daftar",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
