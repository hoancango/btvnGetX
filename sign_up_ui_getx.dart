import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thefirstproject/btvn/GetX/sign_up_controller_getX.dart';
import 'package:thefirstproject/btvn/text%20field%20validate.dart';
import 'package:thefirstproject/resource/baseScreen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GetXSignUpController controller = Get.find<GetXSignUpController>();
    return BaseScreen(
      title: 'Sign Up',
      body: Form(
        key: controller.formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return (controller.isValidUserName(value))
                      ? null
                      : "Check your username";
                },
                controller: controller.usernameController,
                decoration: const InputDecoration(
                    labelText: 'Username', hintText: 'Tài khoản'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return (controller.isValidPassword(value))
                      ? null
                      : "Check your password";
                },
                controller: controller.passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                    labelText: 'Password', hintText: 'Mật khẩu'),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return (controller.passwordController.text ==
                          controller.passwordConfirmController.text)
                      ? null
                      : "Password is not the same";
                },
                controller: controller.passwordConfirmController,
                decoration: const InputDecoration(
                    labelText: 'Password Confirm',
                    hintText: 'Nhập lại mật khẩu'),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                controller: controller.fullNameController,
                decoration: const InputDecoration(
                    labelText: 'Full Name', hintText: 'Họ tên'),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                controller: controller.addressController,
                decoration: const InputDecoration(
                    labelText: 'Address', hintText: 'Địa chỉ'),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                controller: controller.genderController,
                decoration: const InputDecoration(
                    labelText: 'Gender', hintText: 'Giới tính'),
              ),
            ),

            ElevatedButton(
                onPressed: () {
                  if (controller.formKey.currentState!.validate()) {
                    Get.to(const emailValid());
                  }
                },
                child: const Text('Sign Up')),

          ],
        ),
      ),
    );
  }
}
