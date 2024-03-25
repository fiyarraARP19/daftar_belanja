import 'package:flutter/material.dart';
import 'package:daftar_belanja/services/shopping_services.dart';

class ShoppingListScreen extends StatefulWidget {
  const ShoppingListScreen({super.key});

  @override
  State<ShoppingListScreen> createState() => _ShoppingListScreenState();
}

class _ShoppingListScreenState extends State<ShoppingListScreen> {
  final TextEditingController _controller = TextEditingController();
  final ShoppingServices _shoppingServicess = ShoppingServices();
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBar(
        title: Text('Daftar Belanja'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child:TextField(
                    controller: _controller,
                    decoration:
                       InputDecoration(hintText:'Masukan Nama Barang...'),


        ],

                  ))

          )
        ],
      ),
    );
  }
}
