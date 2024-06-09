import 'package:flutter/material.dart';
import 'package:smartcart_app/pages/new_shopping_list.dart';
import 'new_shopping_list.dart'; // Mengimpor halaman baru

class NewListPage extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buat Daftar Baru'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Nama Daftar Belanja',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewShoppingListPage(category: _nameController.text),
                  ),
                );
              },
              child: Text('Buat Daftar'),
              style: ElevatedButton.styleFrom(primary: Colors.orange),
            ),
          ],
        ),
      ),
    );
  }
}
