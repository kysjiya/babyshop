import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../constants.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
    required this.formKey,
    required this.onFormChanged,
  });

  final GlobalKey<FormState> formKey;
  final void Function(String name, String email, String password) onFormChanged;

  @override
  Widget build(BuildContext context) {
    String name = '';
    String email = '';
    String password = '';

    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFormField(
            onSaved: (value) {
              name = value ?? '';
              onFormChanged(name, email, password);
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Username is required';
              }
              return null;
            },
            decoration: InputDecoration(
              hintText: "User Name",
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(vertical: defaultPadding * 0.75),
                child: Icon(Icons.person, color: Theme.of(context).hintColor),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding), // Add consistent margin
          TextFormField(
            onSaved: (value) {
              email = value ?? '';
              onFormChanged(name, email, password);
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Email is required';
              } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                return 'Enter a valid email address';
              }
              return null;
            },
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "Email address",
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(vertical: defaultPadding * 0.75),
                child: Icon(Icons.email, color: Theme.of(context).hintColor),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding), // Add consistent margin
          TextFormField(
            onSaved: (value) {
              password = value ?? '';
              onFormChanged(name, email, password);
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Password is required';
              } else if (value.length < 6) {
                return 'Password must be at least 6 characters';
              }
              return null;
            },
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Password",
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(vertical: defaultPadding * 0.75),
                child: Icon(Icons.lock, color: Theme.of(context).hintColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
