import 'package:daftar_belanja/services/shopping_services.dart';
import 'package:flutter/material.dart';

class ShoppingListScreen extends StatefulWidget {
  const ShoppingListScreen({super.key});

  @override
  State<ShoppingListScreen> createState() => _ShoppingListScreenState();
}

class _ShoppingListScreenState extends State<ShoppingListScreen> {
  final TextEditingController _controller = TextEditingController();
  final ShoppingService _shoppingService = ShoppingService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Shopping List")),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration:
                        const InputDecoration(hintText: 'Enter item name'),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    if (_controller.text.isNotEmpty) {
                      _shoppingService.addShoppingItem(_controller.text);
                      _controller.clear();
                    }
                  },
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: StreamBuilder<Map<String, String>>(
                stream: _shoppingService.getShoppingList(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text("Error: ${snapshot.error}"));
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return const Center(child: Text("No items in the list"));
                  }

                  Map<String, String> items = snapshot.data!;
                  return ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      final key = items.keys.elementAt(index);
                      final item = items[key];

                      return ListTile(
                        title: Text(item!),
                        trailing: IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () {
                            _shoppingService.removeShoppingItem(key);
                          },
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
