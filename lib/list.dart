import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:suptechno2023tp1/my_app_state.dart';

class ListAllPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    return Scaffold(
      appBar: AppBar(
        title: Text('List All'),
      ),
      body: ListView.builder(
        itemCount: appState.allPairs.length,
        itemBuilder: (context, index) {
          var pair = appState.allPairs[index];
          var isFavorite = appState.favorites.contains(pair);

          return ListTile(
            title: Text(pair.asPascalCase),
            trailing: Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
          );
        },
      ),
    );
  }
}
