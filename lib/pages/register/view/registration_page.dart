import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/custom_button.dart';
import '../../../utils/custom_textbox.dart';
import '../../dashboard/view/dashboard_page.dart';
import '../../login/view/login_page.dart';

class ResgistrationPage extends StatefulWidget {
  const ResgistrationPage({Key? key}) : super(key: key);

  @override
  State<ResgistrationPage> createState() => _ResgistrationPageState();
}

class _ResgistrationPageState extends State<ResgistrationPage> {
  TextEditingController _fullNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phonenoController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  late bool _passwordVisible;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: IntrinsicHeight(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 35, horizontal: 20),
                    child: Column(
                      children: [
                        Center(
                          child: Text(
                            "Create An Account",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 13),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        CustomTextBox(
                          controller: _fullNameController,
                          labelText: 'Full Name',
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'FullName is required';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        CustomTextBox(
                          controller: _emailController,
                          keyboard: TextInputType.emailAddress,
                          labelText: 'Email',
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Emali is required';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        CustomTextBox(
                          keyboard: TextInputType.phone,
                          controller: _phonenoController,
                          labelText: 'Phone Number',
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Phone Number is required';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        CustomTextBox(
                          obstsructText: _passwordVisible,
                          suffixIcon: IconButton(
                            icon: Icon(
                              _passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: () {
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            },
                          ),
                          controller: _passwordController,
                          labelText: 'Enter Password',
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Password is required';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        CustomButton(
                          title: "Sign Up",
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => DashboardPage()));
                            Get.to(() => DashboardPage());
                          },
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already Have An Account?",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(fontSize: 15),
                            ),
                            SizedBox(width: 5),
                            InkWell(
                              onTap: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => LoginPage()));
                                Get.to(() => LoginPage());
                              },
                              child: Text(
                                "Login",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                        fontSize: 15,
                                        color: Theme.of(context).primaryColor),
                              ),
                            )
                          ],
                        ),
                        Spacer(
                          flex: 5,
                        ),
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                width: 2,
                                color: Theme.of(context).primaryColor),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/google.png"),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Sign up With Google",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(fontSize: 13),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  width: 2,
                                  color: Theme.of(context).primaryColor)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/apple.png"),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Sign up With Apple",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  width: 2,
                                  color: Theme.of(context).primaryColor)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/facebook.png"),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Sign up With Facebook",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(fontSize: 13),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
