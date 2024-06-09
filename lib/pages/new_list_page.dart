import 'package:flutter/material.dart';

class NewListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Baru'),
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png', // Update this path to your logo image location
              height: 100,
            ),
            SizedBox(height: 20),
            Text(
              'Belanja Bulanan',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            SizedBox(height: 20),
            Wrap(
              spacing: 8.0,
              children: [
                Chip(
                  label: Text('Belanja'),
                ),
                Chip(
                  label: Text('Bahan Makanan'),
                ),
                Chip(
                  label: Text('Perjalanan'),
                ),
                Chip(
                  label: Text('03 / 05 / 2024'),
                ),
              ],
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                // Add functionality to create new list
              },
              child: Text('Buat'),
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                textStyle: TextStyle(fontSize: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: BorderSide(color: Colors.orange),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
