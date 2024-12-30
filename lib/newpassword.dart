import 'package:flutter/material.dart';
import 'package:flutter_application_3/CongratulationsScreen.dart';
import 'package:flutter_application_3/Verification.dart';

void main() {
  runApp(const Newpassword());
}

class Newpassword extends StatelessWidget {
  const Newpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CreatePasswordScreen(),
    );
  }
}

class CreatePasswordScreen extends StatelessWidget {
  const CreatePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFB0C4DE),
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back, color: Color.fromARGB(255, 0, 0, 0)),
              onPressed: () {
                
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Verification()),
                    );
              },
            ),
            const SizedBox(width: 8), // إضافة مسافة بين السهم والنص
            const Text(
              'New password ',
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
          ],
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // الصورة
              Center(
                child: Image.asset(
                  'assets/img/Free_Photo___3d_rendering_of_cartoon_like_boy_reading-removebg-preview 1.png', // استبدل هذا برابط الصورة الخاص بك
                  width: 200,
                  height: 200,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Create Your New Password',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              // حقل كلمة المرور
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.visibility),
                    onPressed: () {
                      // إضافة منطق لإظهار / إخفاء كلمة المرور
                    },
                  ),
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              // حقل تأكيد كلمة المرور
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.visibility),
                    onPressed: () {
                      // إضافة منطق لإظهار / إخفاء كلمة المرور
                    },
                  ),
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 40),
              // زر "Continue"
              ElevatedButton(
                onPressed: () {
                  // الانتقال إلى صفحة Verification
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CongratulationsScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: const Color(0xFF6200EE), // تصحيح اللون
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  'Continue',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}