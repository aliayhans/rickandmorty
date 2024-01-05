import 'package:flutter/material.dart';
import 'package:rickandmorty/model/character.dart';
import 'package:rickandmorty/view_model/main_view_model.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rick and Morty",
        style: TextStyle(
        fontWeight: FontWeight.bold,)),
        centerTitle: true,
        backgroundColor: Colors.green.shade400,
      ),
      body: _buildCharacterList(context),
    );
  }


  Widget _buildCharacterList(BuildContext context) {
    return Consumer<MainViewModel>(
      builder: (context, viewModel, child) => ListView.builder(
        itemCount: viewModel.characters.length,
        itemBuilder: (context, index) {
          Character character = viewModel.characters[index];
          return ListTile(
            title: Text(character.name,
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black,)),
            subtitle: Row(children: [
              Text(character.gender, style: TextStyle(fontWeight: FontWeight.bold),),
              Text(" | "),
              Text(character.status),
              Text(" | "),
              Text(character.species),

            ],),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(character.image),
            ),
          );
        },
      ),
    );
  }
}
