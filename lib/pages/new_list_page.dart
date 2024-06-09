import 'package:flutter/material.dart';
import 'add_item_page.dart';  // Import the new page

class NewListPage extends StatefulWidget {
  @override
  _NewListPageState createState() => _NewListPageState();
}

class _NewListPageState extends State<NewListPage> {
  List<String> items = [];
  int checkedCount = 0;

  void _addItem(String item) {
    setState(() {
      items.add(item);
    });
  }

  void _toggleChecked(int index) {
    setState(() {
      checkedCount += items[index].startsWith('[x] ') ? -1 : 1;
      items[index] = items[index].startsWith('[x] ') ? items[index].substring(4) : '[x] ${items[index]}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belanja Bulanan'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Wrap(
              spacing: 8.0,
              runSpacing: 4.0,
              children: <Widget>[
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
              onPressed: () async {
                final newItem = await Navigator.pushNamed(context, '/add_item');
                if (newItem != null && newItem is String) {
                  _addItem(newItem);
                }
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