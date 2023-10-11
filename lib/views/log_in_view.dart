import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../app_routes.dart';
// import '../utils/controllers/user_controller.dart';
// import '../utils/models/user_model.dart';

class LoginFormView extends StatefulWidget {
  const LoginFormView({Key? key}) : super(key: key);

  @override
  _LoginFormViewState createState() => _LoginFormViewState();
}

class _LoginFormViewState extends State<LoginFormView> {
  final formKey = GlobalKey<FormState>();

  String username = '';
  String password = '';
  bool isPasswordVisible = false;
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('User Found'),
                    content: Text('The user `$username` was found.'),
                    actions: [
                      TextButton(
                        onPressed: () => Get.back(),
                        child: const Text('OK'),
                      ),
                    ],
                  );
                },
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: SizedBox(
                height: 30,
                width: 30,
                child: SvgPicture.asset(
                  'lib/assets/icons_downloaded/call_centre_rep.svg',
                  colorFilter: ColorFilter.mode(
                      Theme.of(context).colorScheme.primary, BlendMode.srcIn),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'LOG IN',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Username',
                ),
                onChanged: (value) => username = value,
              ),
              TextField(
                obscureText: isPasswordVisible ? false : true,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                  labelText: 'Password',
                  suffixIcon: IconButton(
                    icon: Icon(
                      isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(
                        () {
                          isPasswordVisible = !isPasswordVisible;
                        },
                      );
                    },
                  ),
                ),
                onChanged: (value) => password = value,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    const Expanded(
                      child: Center(
                        child: Text(
                            'I understand and allow use of all of the information for testing purpose and dummy app use'),
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton.icon(
                icon: const Icon(
                  Icons.login,
                  size: 24.0,
                ),
                label: const Text('Log In'),
                onPressed: () => Get.toNamed(Routes.HOME),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
