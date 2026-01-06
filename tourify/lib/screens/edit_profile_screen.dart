import 'dart:io'; 
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:image_picker/image_picker.dart'; 
import 'package:tourify/screens/profile_screen.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  String? _imagePath; 
  String _currentUserEmail = '';

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  void _loadUserData() async {
    final prefs = await SharedPreferences.getInstance();
    
    _currentUserEmail = prefs.getString('current_user_email') ?? '';

    setState(() {
      String fullName = prefs.getString('${_currentUserEmail}_name') ?? '';
      List<String> nameParts = fullName.split(' ');
      if (nameParts.isNotEmpty) {
        _firstNameController.text = nameParts[0];
        if (nameParts.length > 1) {
          _lastNameController.text = nameParts.sublist(1).join(' ');
        }
      }
      _locationController.text = prefs.getString('${_currentUserEmail}_location') ?? 'Indonesia';
      _phoneController.text = prefs.getString('${_currentUserEmail}_phone') ?? '';
      
      _imagePath = prefs.getString('${_currentUserEmail}_profile_image');
    });
  }

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        _imagePath = image.path;
      });
    }
  }

  void _saveProfile() async {
    final prefs = await SharedPreferences.getInstance();
    String fullName = '${_firstNameController.text.trim()} ${_lastNameController.text.trim()}'.trim();
    
    await prefs.setString('${_currentUserEmail}_name', fullName);
    await prefs.setString('${_currentUserEmail}_location', _locationController.text.trim());
    await prefs.setString('${_currentUserEmail}_phone', _phoneController.text.trim());
    
    if (_imagePath != null) {
      await prefs.setString('${_currentUserEmail}_profile_image', _imagePath!);
    }

    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Profile updated successfully!')),
      );
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const ProfileScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Container(
          margin: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
            color: Color(0xFFF1F5F9),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new, size: 18, color: Colors.black),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        centerTitle: true,
        title: const Text(
          "Edit Profile",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          TextButton(
            onPressed: _saveProfile,
            child: const Text(
              "Done",
              style: TextStyle(color: Color(0xFF4A8E8D), fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.grey[200],
                    backgroundImage: _imagePath != null
                        ? FileImage(File(_imagePath!)) as ImageProvider
                        : const NetworkImage('https://i.pravatar.cc/300?img=5'),
                  ),
                  const SizedBox(height: 12),
                  TextButton(
                    onPressed: _pickImage, 
                    child: const Text(
                      "Change Profile Picture",
                      style: TextStyle(color: Color(0xFF4A8E8D), fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            _buildCustomTextField(label: "First Name", controller: _firstNameController),
            const SizedBox(height: 20),
            _buildCustomTextField(label: "Last Name", controller: _lastNameController),
            const SizedBox(height: 20),
            _buildCustomTextField(label: "Location", controller: _locationController),
            const SizedBox(height: 20),
            
            _buildCustomTextField(
              label: "Mobile Number", 
              controller: _phoneController, 
              keyboardType: TextInputType.phone
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCustomTextField({
    required String label,
    required TextEditingController controller,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Color(0xFF1E293B)),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFFF8FAFC),
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextField(
            controller: controller,
            keyboardType: keyboardType,
            style: const TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF1E293B)),
            decoration: const InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              suffixIcon: Icon(Icons.check, color: Color(0xFF4A8E8D)),
            ),
          ),
        ),
      ],
    );
  }
}