import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tourify/helpers/encryption_helper.dart';
import 'package:tourify/screens/main_screen.dart';
import 'package:tourify/screens/signup_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _identifierController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isObscure = true;

  void _signIn() async {
    String inputIdentifier = _identifierController.text.trim();
    String inputPassword = _passwordController.text.trim();

    if (inputIdentifier.isEmpty || inputPassword.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill all fields')),
      );
      return;
    }

    final prefs = await SharedPreferences.getInstance();
    
    String? storedEmail = prefs.getString('user_email');
    String? storedPhone = prefs.getString('user_phone');
    String? storedEncryptedPass = prefs.getString('user_password');

    if (storedEncryptedPass == null) {
       ScaffoldMessenger.of(context).showSnackBar(
         const SnackBar(content: Text('User not found. Please Sign Up first.')),
       );
       return;
    }

    String decryptedStoredPass;
    try {
      decryptedStoredPass = EncryptionHelper.decryptPassword(storedEncryptedPass);
    } catch (e) {
      decryptedStoredPass = ""; 
    }

    bool isUserMatch = (inputIdentifier == storedEmail) || (inputIdentifier == storedPhone);
    bool isPasswordMatch = (inputPassword == decryptedStoredPass);

    if (isUserMatch && isPasswordMatch) {
      await prefs.setBool('is_login', true);

      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const MainScreen()),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Invalid Email/Phone or Password')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, 
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.jpg'), 
                fit: BoxFit.cover,
              ),
            ),
          ),
          
          Container(
            color: Colors.black.withOpacity(0.3),
          ),

          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.95), 
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Let's Travel you in.",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1A4D2E), 
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Discover Indonesia with Every Sign In",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 24),
                    
                    TextFormField(
                      controller: _identifierController,
                      decoration: InputDecoration(
                        hintText: 'Email or Phone Number', 
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                      ),
                    ),
                    const SizedBox(height: 16),
                    
                    TextFormField(
                      controller: _passwordController,
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isObscure ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                        ),
                      ),
                    ),
                    
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Forgot password?',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ),
                    ),
                    
                    const SizedBox(height: 10),
                    
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF1E293B),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: _signIn,
                        child: const Text(
                          'Sign In',
                          style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    
                    const SizedBox(height: 20),
                    
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("don't have an account? ", style: TextStyle(color: Colors.grey)),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const SignUpScreen()),
                              );
                            },
                            child: const Text(
                              "Sign Up",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF1E293B),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}