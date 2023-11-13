import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:melissa_store/ui/widgets/global_button.dart';
import 'package:melissa_store/ui/widgets/global_text_field.dart';
import 'package:melissa_store/utils/extensions/extensions.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('Melissa-store'),
        titleTextStyle: TextStyle(
          fontSize: 24.sp,
          fontWeight: FontWeight.w500,
          color: const Color(0xFF2196F3),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            88.ph,
            Text(
              "Tizimga kirish",
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF212121),
              ),
            ),
            12.ph,
            Text(
              "Lorem ipsum dolor sit amet, consectetur ",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF616161),
              ),
            ),
            32.ph,
            Text(
              "Log in",
              style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF616161),
              ),
            ),
            12.ph,
            GlobalTextField(
              controller: loginController,
              keyboardType: TextInputType.emailAddress,
              hintText: 'Loginingizni kiriting',
              contentPadding:
                  EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
            ),
            20.ph,
            Text(
              "Parol",
              style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF616161),
              ),
            ),
            12.ph,
            GlobalTextField(
              obscureText: isVisible,
              controller: passwordController,
              hintText: 'Parolingizni kiriting',
              contentPadding:
                  EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
              suffixIcon: IconButton(
                icon: Icon(
                  isVisible ? Icons.visibility : Icons.visibility_off,
                  size: 20.h,
                ),
                onPressed: () {
                  setState(() {
                    isVisible = !isVisible;
                  });
                },
              ),
            ),
            40.ph,
            GlobalButton(
              text: 'Kirish',
              onTap: () {
                if(loginController.text.isEmpty || passwordController.text.isEmpty) {
                  Fluttertoast.showToast(msg: 'msg');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
