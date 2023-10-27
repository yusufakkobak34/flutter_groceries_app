import 'package:flutter/material.dart';
import 'package:flutter_groceries_app/common/color/color_extension.dart';
import 'package:flutter_groceries_app/common_widgets/line_textfield.dart';
import 'package:flutter_groceries_app/common_widgets/round_button.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  bool isShow = false;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Stack(
      children: [
        Container(
          color: Colors.white,
          child: Image.asset(
            "assets/img/bottom_bg.png",
            width: media.width,
            height: media.height,
            fit: BoxFit.cover,
          ),
        ),
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Image.asset(
                "assets/img/back.png",
                width: 20,
                height: 20,
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/img/color_logo.png", width: 40),
                      ],
                    ),
                    SizedBox(
                      height: media.width * 0.15,
                    ),
                    Text(
                      "Kaydolun",
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: media.width * 0.04,
                    ),
                    Text(
                      "Lütfen gerekli alanları doldurun",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: media.width * 0.1,
                    ),
                    LineTextField(
                      title: "Kullanıcı Adı",
                      placeholder: "Lütfen kullanıcı adı girin",
                      controller: txtUsername,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: media.width * 0.07,
                    ),
                    LineTextField(
                      title: "EMail",
                      placeholder: "Lütfen EMail adresi girin",
                      controller: txtEmail,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: media.width * 0.07,
                    ),
                    LineTextField(
                      title: "Şifre",
                      placeholder: "Lütfen şifrenizi girin",
                      controller: txtPassword,
                      obscureText: isShow,
                      right: IconButton(
                        onPressed: () {
                          setState(() {
                            isShow = !isShow;
                          });
                        },
                        icon: Icon(
                          !isShow ? Icons.visibility_off : Icons.visibility,
                          color: TColor.textTitle,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: media.width * 0.04,
                    ),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        children: [
                          TextSpan(
                            text:
                                "Devam ederek kullanıcı şunları kabul etmiş olursunuz ",
                          ),
                          TextSpan(
                            text: "Kullanıcı Sözleşmesi",
                            style: TextStyle(
                              color: TColor.primary,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: " ve ",
                          ),
                          TextSpan(
                            text: "Gizlilik Sözleşmesi",
                            style: TextStyle(
                              color: TColor.primary,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: media.width * 0.05,
                    ),
                    RoundButton(
                      title: "Kaydolun",
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: media.width * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Hesabınız var mı?",
                                style: TextStyle(
                                  color: TColor.primaryText,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Giriş Yapın",
                                style: TextStyle(
                                  color: TColor.primary,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
