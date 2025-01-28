import 'package:flutter/material.dart';
import '/Controllers/profile_controller.dart';
import '/services/validators.dart';
import '/utils/theme_colors.dart';
import '/widgets/loader.dart';
import 'package:get/get.dart';

class EditPasswordPage extends StatefulWidget {
  @override
  State<EditPasswordPage> createState() => _EditPasswordPageState();
}

class _EditPasswordPageState extends State<EditPasswordPage> {
  final _formKey = GlobalKey<FormState>();
  Validators validators = Validators();

  final profileController = ProfileController();
  var mainHeight, mainWidth;

  @override
  void initState() {
    profileController.onInit();
    setState(() {});

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mainHeight = MediaQuery.of(context).size.height;
    mainWidth = MediaQuery.of(context).size.width;
    return GetBuilder<ProfileController>(
      init: ProfileController(),
      builder: (profile) => Scaffold(
        appBar: AppBar(
          backgroundColor: ThemeColors.baseThemeColor,
          elevation: 0.0,
          centerTitle: true,
          title: Text('PASSWORD_RESET'.tr),
        ),
        body: SingleChildScrollView(
            child: Stack(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 30),
                height: mainHeight / 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ThemeColors.baseThemeColor.withOpacity(.01),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('CURRENT_PASSWORD'.tr),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          controller: profile.passwordCurrentController,
                          obscureText: false,
                          //initialValue: widget.userdata['name'],
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.text,
                          style: TextStyle(
                            fontSize: 18,
                            height: 0.8,
                          ),
                          decoration: InputDecoration(
                            hintStyle: TextStyle(fontSize: 15),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: ThemeColors.baseThemeColor),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: ThemeColors.baseThemeColor),
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: ThemeColors.baseThemeColor)),
                            hintText: "",
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('NEW_PASSWORD'.tr),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          controller: profile.passwordController,
                          obscureText: true,
                          //initialValue: widget.userdata['name'],
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.text,
                          style: TextStyle(
                            fontSize: 18,
                            height: 0.8,
                          ),
                          decoration: InputDecoration(
                            hintStyle: TextStyle(fontSize: 15),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: ThemeColors.baseThemeColor),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: ThemeColors.baseThemeColor),
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: ThemeColors.baseThemeColor),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('RETYPE_YOUR_PASSWORD'.tr),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          controller: profile.passwordConfirmController,
                          obscureText: true,
                          //initialValue: widget.userdata['name'],
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.text,
                          style: TextStyle(
                            fontSize: 18,
                            height: 0.8,
                          ),
                          decoration: InputDecoration(
                            hintStyle: TextStyle(fontSize: 15),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: ThemeColors.baseThemeColor),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: ThemeColors.baseThemeColor),
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: ThemeColors.baseThemeColor)),
                            hintText: "",
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(120),
                            child: SizedBox(
                              width: 130,
                              height: 40,
                              child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: ThemeColors.baseThemeColor,
                                ),
                                icon: Icon(
                                  Icons.update,
                                  size: 26,
                                ),
                                label: Text(
                                  'UPDATE'.tr,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                onPressed: () {
                                  profile.updateUserPassword(context: context);
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          profile.loader
              ? Positioned(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white60,
                    child: Center(
                      child: Loader(),
                    ),
                  ),
                )
              : SizedBox.shrink(),
        ])),
      ),
    );
  }
}
