import 'package:app/receipes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dart:ui';
import 'package:video_player/video_player.dart';
import 'dart:async';

// ignore: must_be_immutable
class Ingredients extends StatefulWidget {
  Ingredients(this.get, this.favourite, this.sx,
      {Key? key, required this.index})
      : super(key: key);
  final List<String> get;
  final int index;
  List<String> sx;
  Function(String s) favourite;

  @override
  IngredientsState createState() => IngredientsState();
}

class IngredientsState extends State<Ingredients> {
  bool _shouldShowImage = false;
  late VideoPlayerController _controller;
  bool _isFavorited = false;

  @override
  void initState() {
    super.initState();
    _initializeVideo();
    Timer(const Duration(seconds: 1), () {
      setState(() {
        _shouldShowImage = true;
      });
    });

    _isFavorited = widget.sx.contains(widget.get[0] + widget.get[1]);
  }

  Future<void> _initializeVideo() async {
    try {
      _controller = VideoPlayerController.asset(widget.get[14]);
      await _controller.initialize();
      setState(() {});
    } catch (error) {
      //print('Error initializing video: $error');
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleFavorite(String recipeName) {
    String formattedName = recipeName.trim().toUpperCase();
    // Check if the recipe is already in favorites
    if (widget.sx.contains(formattedName)) {
      // Recipe is already favorited, show a message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('$recipeName is already in favourites.'),
          duration: const Duration(seconds: 2),
        ),
      );
    } else {
      setState(() {
        widget.sx.add(formattedName);
        _isFavorited = true; //
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('$recipeName added to favourites!'),
          duration: const Duration(seconds: 2),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            onPressed: () {
              //insert(widget.get, context);
              // addToFavorites(widget.get[0] + widget.get[1]);
              _toggleFavorite(widget.get[0] + widget.get[1]);

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddedRecipe(widget.sx)),
              );
            },
            icon: Icon(
              Icons.favorite,
              color: _isFavorited ? Colors.red : Colors.white,
            ),
          )
        ],
        backgroundColor: Colors.black87,
        title: RichText(
          text: TextSpan(
            style: GoogleFonts.dancingScript(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: screenWidth < 600 ? 40 : 60,
            ),
            children: [
              TextSpan(
                text: widget.get[0].toUpperCase(),
              ),
              TextSpan(
                text: widget.get[1].toLowerCase(),
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: screenWidth < 600 ? 20 : 30,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        color: Colors.black87,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Text(
                    widget.get[2],
                    style: GoogleFonts.roboto(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    widget.get[3],
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Text(
                    widget.get[4],
                    style: GoogleFonts.roboto(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
                Stack(
                  children: [
                    AnimatedOpacity(
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeIn,
                      opacity: _shouldShowImage ? 1.0 : 0.0,
                      child: Container(
                        height: screenWidth < 600 ? 190 : 190,
                        width: screenWidth < 600 ? 400 : 450,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(widget.get[5]),
                          ),
                        ),
                      ),
                    ),
                    Positioned.fill(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 0.3, sigmaY: 0.3),
                        child: Container(
                          color: Colors.black38.withOpacity(0.3),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Flexible(
                                      child: _buildIngredientRow(widget.get[6]),
                                    ),
                                    const SizedBox(width: 10),
                                    Flexible(
                                      child: _buildIngredientRow(widget.get[7]),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    Flexible(
                                      child: _buildIngredientRow(widget.get[8]),
                                    ),
                                    const SizedBox(width: 10),
                                    Flexible(
                                      child: _buildIngredientRow(widget.get[9]),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    Flexible(
                                      child:
                                          _buildIngredientRow(widget.get[10]),
                                    ),
                                    const SizedBox(width: 10),
                                    Flexible(
                                      child:
                                          _buildIngredientRow(widget.get[11]),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    Flexible(
                                      child:
                                          _buildIngredientRow(widget.get[12]),
                                    ),
                                    const SizedBox(width: 10),
                                    Flexible(
                                      child:
                                          _buildIngredientRow(widget.get[13]),
                                    ),
                                  ],
                                ),
                                // Add more rows as needed
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Text(
                    'VIDEO PROCESS',
                    style: GoogleFonts.roboto(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.9,
                  height: screenWidth * 0.9 * 9 / 16,
                  child: Stack(
                    children: [
                      _controller.value.isInitialized
                          ? AspectRatio(
                              aspectRatio: _controller.value.aspectRatio,
                              child: VideoPlayer(_controller),
                            )
                          : const CircularProgressIndicator(),
                      Center(
                        child: IconButton(
                          icon: Icon(
                            _controller.value.isPlaying
                                ? Icons.pause
                                : Icons.play_arrow,
                            size: 50,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            setState(() {
                              if (_controller.value.isPlaying) {
                                _controller.pause();
                              } else {
                                _controller.play();
                              }
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildIngredientRow(String ingredientName) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: Row(
      children: [
        Icon(
          Icons.arrow_forward,
          color: Colors.white.withOpacity(0.9),
          size: 18,
        ),
        const SizedBox(width: 5),
        Flexible(
          child: Text(
            ingredientName,
            style: GoogleFonts.roboto(
              color: Colors.white.withOpacity(0.9),
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ),
      ],
    ),
  );
}
