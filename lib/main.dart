// import 'package:firsthomework_yasseralmahdaly_custumbuttonandtext/widgets/yasserbutton.dart';
// import 'package:firsthomework_yasseralmahdaly_custumbuttonandtext/widgets/yassertextfield.dart';
// import 'package:firsthomework_yasseralmahdaly_custumbuttonandtext/widgets/custom_container.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController phoneController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();

//   void refreshPage() {
//     setState(() {
//       nameController.clear();
//       emailController.clear();
//       phoneController.clear();
//       passwordController.clear();
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.blue,
//           title: const Text("Yasser button & text")),
//         body: Container(
//           padding: const EdgeInsets.all(10),
//           child: Column(
//             children: [

//                Yassertextfield(
//                 controller: nameController,
//                 hint: "Enter your name",
//                 texticon: Icons.person,
//                 texttype: TextInputType.name),

//                Yassertextfield(
//                 controller: emailController,
//                 hint: "Enter your email",
//                 texticon: Icons.email,
//                 texttype: TextInputType.emailAddress),

//                Yassertextfield(
//                 controller: phoneController,
//                 hint: "Enter your phone number",
//                 texticon: Icons.phone,
//                 texttype: TextInputType.phone),

//                Yassertextfield(
//                 controller: passwordController,
//                 hint: "Enter your password",
//                 texticon: Icons.password,
//                 texttype: TextInputType.visiblePassword),

//               Yasserbutton(
//                 btext:"Submit",
//                 buttoncolor: const Color.fromARGB(255, 0, 59, 108),
//                 textcolor: Colors.white,
//                 onPressed: refreshPage,),
//             ],
//           ),
//         ),
//       )
//     );
//   }
// }

import 'package:firsthomework_yasseralmahdaly_custumbuttonandtext/helpers/validation_patterns.dart';
import 'package:firsthomework_yasseralmahdaly_custumbuttonandtext/widgets/yasserbutton.dart';
import 'package:firsthomework_yasseralmahdaly_custumbuttonandtext/widgets/yassertextfield.dart';
import 'package:firsthomework_yasseralmahdaly_custumbuttonandtext/widgets/custom_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String? nameError;
  String? emailError;
  String? phoneError;
  String? passwordError;
  bool isAgreed = false;
  String? checkboxError;

  void refreshPage() {
    setState(() {
      nameController.clear();
      emailController.clear();
      phoneController.clear();
      passwordController.clear();
    });
  }

  String? validateEmail(String value) {
    if (!ValidationPatterns.emailPattern.hasMatch(value)) {
      return 'The email is not correct';
    }
    return null;
  }

  String? validatePhone(String value) {
    if (!ValidationPatterns.phonePattern.hasMatch(value)) {
      return 'The phone number is not correct';
    }
    return null;
  }

  String? validateText(String value) {
    if (!ValidationPatterns.textPattern.hasMatch(value)) {
      return 'The text most be letters only';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Yasser button & text"),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: CustomContainer(
              title: const Text(
                "Fill Your Information",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              children: [
                Yassertextfield(
                  controller: nameController,
                  hint: "Enter your name",
                  texticon: Icons.person,
                  texttype: TextInputType.name,
                ),
                if (nameError != null) // عرض رسالة الخطأ إذا كانت موجودة
                  Text(nameError!, style: TextStyle(color: Colors.red)),
                const SizedBox(height: 12),
                Yassertextfield(
                  controller: emailController,
                  hint: "Enter your email",
                  texticon: Icons.email,
                  texttype: TextInputType.emailAddress,
                ),
                if (emailError != null)
                  Text(emailError!, style: TextStyle(color: Colors.red)),
                const SizedBox(height: 12),
                Yassertextfield(
                  controller: phoneController,
                  hint: "Enter your phone number",
                  texticon: Icons.phone,
                  texttype: TextInputType.phone,
                ),
                if (phoneError != null)
                  Text(phoneError!, style: TextStyle(color: Colors.red)),
                const SizedBox(height: 12),
                Yassertextfield(
                  controller: passwordController,
                  hint: "Enter your password",
                  texticon: Icons.lock,
                  texttype: TextInputType.visiblePassword,
                  obscureText: true,
                ),
                if (passwordError != null)
                  Text(passwordError!, style: TextStyle(color: Colors.red)),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Checkbox(
                      value: isAgreed,
                      onChanged: (value) {
                        setState(() {
                          isAgreed = value!;
                          checkboxError = null; // مسح رسالة الخطأ عند التغيير
                        });
                      },
                    ),
                    const Expanded(
                      // يجعل النص ينتشر بجانب التشيك بوكس
                      child: Text(
                        "I agree to the Privacy Policy and Terms of Service.",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ],
                ),
                if (checkboxError !=
                    null) // عرض رسالة الخطأ إذا لم يتم تحديد التشيك بوكس
                  Text(
                    checkboxError!,
                    style: const TextStyle(color: Colors.red),
                  ),
                const SizedBox(height: 20),
                Yasserbutton(
                  btext: "Submit",
                  buttoncolor: const Color.fromARGB(255, 0, 59, 108),
                  textcolor: Colors.white,
                  onPressed: () {
                    setState(() {
                      nameError = validateText(nameController.text);
                      emailError = validateEmail(emailController.text);
                      phoneError = validatePhone(phoneController.text);
                      passwordError = passwordController.text.isEmpty
                          ? 'password can not be empty'
                          : null;
                      if (!isAgreed) {
                        checkboxError =
                            "You must agree to the Privacy Policy to continue.";
                      } else {
                        checkboxError = null; // مسح الخطأ إذا كان المستخدم وافق
                      }
                    });
                    if (nameError == null &&
                        emailError == null &&
                        phoneError == null &&
                        passwordError == null &&
                        isAgreed) {
                      setState(() {
                        nameController.clear();
                        emailController.clear();
                        phoneController.clear();
                        passwordController.clear();

                        isAgreed = false; // إعادة ضبط التشيك بوكس
                        nameError = null;
                        emailError = null;
                        phoneError = null;
                        passwordError = null;
                        checkboxError = null;
                      });
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
