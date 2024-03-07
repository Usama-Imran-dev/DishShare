import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddedRecipe extends StatefulWidget {
  final List<String> recipes;
  const AddedRecipe(this.recipes, {Key? key}) : super(key: key);

  @override
  AddedRecipeState createState() => AddedRecipeState();
}

class AddedRecipeState extends State<AddedRecipe> {
  String? deletedItem;
  int? indexOfDeletedItem; // Track the index of the deleted item

  void showUndoSnackBar(String deletedItem, int index) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Recipe deleted: $deletedItem'),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            setState(() {
              if (deletedItem.isNotEmpty && indexOfDeletedItem != null) {
                widget.recipes.insert(indexOfDeletedItem!, deletedItem);
              }
            });
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        iconTheme: const IconThemeData(color: Colors.white),
        title: LayoutBuilder(
          builder: (context, constraints) {
            double titleFontSize = constraints.maxWidth < 600 ? 40 : 60;
            double subtitleFontSize = constraints.maxWidth < 600 ? 20 : 30;
            return RichText(
              text: TextSpan(
                style: GoogleFonts.dancingScript(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: titleFontSize,
                ),
                children: [
                  const TextSpan(
                    text: 'D', // Capital 'D'
                  ),
                  TextSpan(
                    text: 'ishshare', // Rest in lowercase
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: subtitleFontSize,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          double titleFontSize = constraints.maxWidth * 0.08;
          double cardWidth = constraints.maxWidth * 0.8;
          double cardHeight = constraints.maxHeight * 0.1;
          double iconSize = cardHeight * 0.4;

          return Container(
            color: Colors.black87,
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Text(
                      'YOUR FAVOURITE',
                      style: GoogleFonts.roboto(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                        fontSize: titleFontSize,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 300,
                    child: Divider(
                      thickness: 2,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  widget.recipes.isEmpty
                      ? const Center(
                          child: Text(
                            'Start adding your favourite recipes',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          ),
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: widget.recipes
                              .asMap()
                              .entries
                              .map(
                                (entry) => Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 16.0), // Add padding here
                                  child: Dismissible(
                                    key: Key(entry.value),
                                    onDismissed: (direction) {
                                      setState(() {
                                        deletedItem = entry.value;
                                        indexOfDeletedItem = entry.key;
                                        widget.recipes.removeAt(entry.key);
                                      });
                                      showUndoSnackBar(
                                          deletedItem!, indexOfDeletedItem!);
                                    },
                                    background: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Container(
                                        color: Colors.red,
                                        alignment: Alignment.centerLeft,
                                        child: const Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 250),
                                          child: Icon(
                                            Icons.delete,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ),
                                      ),
                                    ),
                                    child: SizedBox(
                                      width: cardWidth,
                                      height: cardHeight,
                                      child: Card(
                                        color: Colors.orange,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.add_alert,
                                              color: Colors.white,
                                              size: iconSize,
                                            ),
                                            const SizedBox(
                                              width: 30,
                                            ),
                                            Text(
                                              entry.value,
                                              style: GoogleFonts.roboto(
                                                color: Colors.white,
                                                fontSize: constraints.maxWidth *
                                                    0.07, // Adjust text size based on screen width
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
