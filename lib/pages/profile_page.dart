import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nameController.text = "TINA"; // Initial name
    _emailController.text = "agustinamulyaningsih28@gmail.com"; // Initial email
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Akun'),
        backgroundColor: Colors.orange,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey.shade300,
              child: Icon(
                Icons.person,
                size: 80,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 16),
            Text(
              _emailController.text,
              style: TextStyle(
                fontSize: 16,
                color: Colors.orange.shade800,
              ),
            ),
            SizedBox(height: 32),
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Ubah nama',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Ubah email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Ubah password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                // Handle save action
                // Save the changes made to the profile
              },
              child: Text('Save Changes'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                textStyle: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Akun',
          ),
        ],
        currentIndex: 1, // Set the current index to "Akun" tab
        selectedItemColor: Colors.orange,
        onTap: (index) {
          if (index == 0) {
            Navigator.pop(context); // Go back to home page
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
