// lib/screens/register_screen.dart
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlutterLogo(size: 100),
            SizedBox(height: 20),
            TextFormField(
              controller: nameController, // Tambahkan kontroler ini
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextFormField(
              controller: emailController, // Tambahkan kontroler ini
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextFormField(
              controller: passwordController, // Tambahkan kontroler ini
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                try {
                  await FirebaseAuth.instance.createUserWithEmailAndPassword(
                    email: emailController.text,
                    password: passwordController.text,
                  );
                  // Update informasi pengguna, seperti nama
                  await FirebaseAuth.instance.currentUser?.updateDisplayName(nameController.text);
                  Navigator.pushReplacementNamed(context, '/home');
                } catch (e) {
                  print('Error: $e');
                  // Tampilkan pesan error kepada pengguna
                }
              },
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
