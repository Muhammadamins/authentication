import 'package:aaaaaa/authentication/sign_in/sign_in_page.dart';
import 'package:aaaaaa/home_page/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final FirebaseAuth auth = FirebaseAuth.instance;

    return Scaffold(
      appBar: AppBar(title: const Text('Sign UP  page'), actions: [
        IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SignInPage()));
            },
            icon: const Icon(Icons.sign_language))
      ]),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text('Shaxsiy hisobingizga yarating yangi? '),
            const SizedBox(
              height: 32,
            ),
            TextField(
              controller: email,
              decoration: const InputDecoration(
                  label: Text('Email'), border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: password,
              decoration: const InputDecoration(
                  label: Text('Password'), border: OutlineInputBorder()),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () async {
          try {
            UserCredential user = await auth.createUserWithEmailAndPassword(
                email: email.text, password: password.text);
            print(user.user!.email);

            Navigator.pushAndRemoveUntil(
                // ignore: use_build_context_synchronously
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
                (route) => false);
          } catch (error) {
            // ignore: use_build_context_synchronously
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  error.toString(),
                ),
              ),
            );
          }
        },
        child: const Icon(Icons.login),
      ),
    );
  }
}
