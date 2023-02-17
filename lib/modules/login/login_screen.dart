import 'package:flutter/material.dart';
import 'package:learningapp/shared/components/components.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @required
  final emailController = TextEditingController();

  @required
  final passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: AlignmentDirectional.topStart,
                    child: const Text(
                      'Login',
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 40),
                  defaultTextformfield(
                      Controller: emailController,
                      label: 'Enter your email',
                      onSubmit: (value) {
                        print(value);
                      },
                      onChange: (value) {
                        print(value);
                      },
                      type: TextInputType.emailAddress,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                      isPassword: false,
                      prefix: Icons.email),
                  const SizedBox(height: 20),
                  defaultTextformfield(
                      Controller: passwordController,
                      label: 'enter your password',
                      onSubmit: (value) {
                        print(value);
                      },
                      onChange: (value) {
                        print(value);
                      },
                      type: TextInputType.visiblePassword,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your password';
                        }
                      },
                      isPassword: isPassword,
                      prefix: Icons.lock,
                      suffix:
                          isPassword ? Icons.visibility : Icons.visibility_off,
                      suffixPressed: () {
                        setState(() {
                          isPassword = !isPassword;
                        });
                      }),
                  const SizedBox(height: 20),
                  defaultButton(
                    height: 50,
                    back: Colors.red,
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        print(emailController.text);
                        print(passwordController.text);
                      }
                    },
                    text: 'Login',
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Don\'t have an account?'),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Register Now'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
