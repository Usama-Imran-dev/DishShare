import 'package:app/ingredients.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

List<List<String>> a = [
  [
    'B',
    'urger',
    'ABOUT BURGER',
    'A Burger is a handheld delight, a savory symphony of juicy beef, melted cheese, and crisp veggies, all nestled between soft, toasted buns. Its aroma beckons and its flavors dance on the taste buds, an irresistible classic loved by many.',
    'INGREDIENTS OF BURGER',
    'assets/images/Burger.png',
    '1 pound (450g) ground beef',
    '1 tablespoon Worcestershire sauce',
    'Salt and pepper to taste',
    '4 BurgerIngredients buns',
    '4 slices of cheese',
    'Lettuce leaves',
    'Condiments',
    'Extras',
    'assetss/videos/burger.mp4'
  ],
  [
    "P",
    "izza",
    "ABOUT PIZZA",
    "Pizza is an Italian food that was created in Italy (The Naples area). It is made with different toppings. Some of the most common toppings are cheese, sausages, pepperoni, vegetables, tomatoes, spices and herbs and basil. These toppings are added over a piece of bread covered with sauce.",
    'INGREDIENTS OF PIZZA',
    'assets/images/piza.png',
    'Dough',
    'Tomato Sauce',
    'Mozzarella',
    'Pepperoni',
    'Mushrooms',
    'Olives',
    'Basil',
    'Oregano',
    'assetss/videos/pizza.mp4'
  ],
  [
    "S",
    "hawrama",
    "ABOUT SHAWARMA",
    "shawarma, popular street food in the Middle East, which originated in Turkey and is made of spit-roasted layers of lamb, beef, or other meat that are sliced and often wrapped in or served with pita",
    'INGREDIENTS OF SHAWARMA',
    'assets/images/sha.png',
    'Pita Bread',
    'Chicken or Beef',
    'Garlic Sauce',
    'Tahini Sauce',
    'Pickled Cucumber',
    'lecture',
    'Tomato',
    ' lemon juice.',
    'assetss/videos/shawarma.mp4'
  ],
  [
    "S",
    "andwich",
    "ABOUT SANDWICH",
    "A sandwich is a food typically consisting of vegetables, sliced cheese or meat, placed on or between slices of bread, or more generally any dish wherein bread serves as a container or wrapper for another food type.",
    'INGREDIENTS OF SANDWICH',
    'assets/images/sandwich.png',
    'Bread',
    'Lettuce',
    'Cheese',
    'Turkey',
    'Mayonnaise',
    'Mustard',
    'Pickles',
    'Tomato',
    'assetss/videos/sandwich.mp4'
  ],
  [
    "C",
    "hicken",
    "ABOUT CHICKEN",
    "Chicken is one of the most versatile and widely consumed meats globally. Its appeal lies in its ability to adapt to various culinary styles and flavors. Whether grilled to perfection, fried to crispy goodness, or simmered in savory sauces, chicken's mild taste provides a perfect canvas for a wide range of seasonings and ingredients. From comforting chicken noodle soup to spicy chicken tikka, this poultry staple continues to be a beloved choice in cuisines worldwide.",
    'INGREDIENTS OF CHICKEN',
    'assets/images/frieds.png',
    'Chicken pieces',
    'All-purpose flour',
    'Paprika',
    'Salt',
    'Thyme',
    'Basil',
    'Oregano',
    'Garlic powder',
    'assetss/videos/fried.mp4'
  ],
];
List<List<String>> b = [
  [
    'B',
    'iryani',
    'ABOUT BIRYANI',
    'Biryani (is a mixed rice dish that was thought to have originated from Iran before settling in modern India. It is made with rice, some type of meat (chicken, beef, goat, lamb, prawn, or fish) and spices. To cater to vegetarians, in some cases, it is prepared by substituting vegetables for the meat',
    'INGREDIENTS OF BIRYANI',
    'assets/images/biryani.png',
    'Basmati Rice',
    'Chicken or Mutton',
    'Onions',
    'Tomatoes',
    'Yogurt',
    'Ghee',
    'Spices (Cardamom, Cloves, Cinnamon)',
    'Saffron',
    'assetss/videos/biryani.mp4'
  ],
  [
    'R',
    'oast',
    'ABOUT ROAST',
    'Chicken roast is a delectable dish where chicken pieces are marinated in a blend of spices, ginger-garlic paste, and yogurt, then roasted to tender perfection. The marinated chicken, infused with flavors, is cooked in a skillet until golden and succulent, offering a delightful balance of aromatic spices and rich taste.',
    'INGREDIENTS OF ROAST',
    'assets/images/roast.png',
    'Chicken pieces (preferably bone-in for added flavor)',
    'Yogurt or lemon juice (for marination)',
    'Spices (such as cumin, coriander, turmeric, garam masala, chili powder, etc.)',
    'Ginger-garlic paste',
    'Salt',
    'Cooking oil or ghee',
    'Onions, tomatoes (optional, for gravy)',
    'Vinegar or Lime Juice',
    'assetss/videos/roast.mp4'
  ],
  [
    'S',
    'aag',
    'ABOUT SAAG',
    'Saag is a flavorful popular Punjabi-Indian dish famous for its rich nutrients and links to green leafy vegetables such as spinach, mustard leaves, dill, and fenugreek. This dish tastes best with Indian bread like roti, naan, paratha, or flavored rice.',
    'INGREDIENTS OF SAAG',
    'assets/images/saag.png',
    'Leafy Greens',
    'Onions',
    'Tomatoes',
    'Ginger-Garlic Paste',
    'Green Chilies',
    'Spices',
    'Paneer',
    'Cream or Yogurt',
    'assetss/videos/saag.mp4'
  ],
  [
    'B',
    'utter Chicken',
    'ABOUT BUTTER CHICKEN',
    'Butter chicken, a beloved North Indian classic, is a culinary masterpiece that has captured hearts worldwide. Tender pieces of chicken are marinated in a blend of yogurt and spices, then simmered in a rich and velvety tomato-based sauce.',
    'INGREDIENTS OF BUTTER CHICKEN',
    'assets/images/butter.png',
    'chicken',
    'yogurt',
    'spices',
    'tomatoes',
    'butter,',
    'cream',
    'garlic',
    'ginger.',
    'assetss/videos/butter.mp4'
  ],
  [
    'P',
    'alak Paneer',
    'ABOUT PALAK PANEER',
    'Palak Paneer, a beloved Indian vegetarian dish, celebrates the harmony of flavors and textures. It stars paneer, a fresh cheese, nestled in a creamy spinach-based gravy. The vibrant green color and the earthy blend of spices make it visually appealing and delightful to the palate.',
    'INGREDIENTS OF PALAK PANEER',
    'assets/images/paneer.png',
    'paneer ',
    'spinach,',
    'onions, ',
    'tomatoes',
    'cream,',
    'ginger,',
    'garlic',
    'spices.',
    'assetss/videos/paneer.mp4'
  ],
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int _currentCarouselPage = 0;
  //int _selectedIndex = 0;
  List<String> selectedFavorites = [];

  void toggleFavorite(String recipeName) {
    setState(() {
      if (selectedFavorites.contains(recipeName)) {
        selectedFavorites.remove(recipeName);
      } else {
        selectedFavorites.add(recipeName);
      }
    });
  }

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        iconTheme: const IconThemeData(color: Colors.white),
        title: RichText(
          text: TextSpan(
            style: GoogleFonts.dancingScript(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: MediaQuery.of(context).size.width < 600 ? 40 : 60,
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
                  fontSize: MediaQuery.of(context).size.width < 600 ? 20 : 30,
                ),
              ),
            ],
          ),
        ),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Container(
            color: Colors.black87,
            child: Padding(
              padding: EdgeInsets.all(constraints.maxWidth < 600 ? 16 : 28),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(
                        height: constraints.maxWidth < 600 ? 310 : 335,
                        aspectRatio: 16 / 9,
                        enableInfiniteScroll: false,
                        viewportFraction: 0.8,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _currentCarouselPage = index;
                          });
                        },
                      ),
                      items: [
                        CarouselItem(
                            index: 0,
                            imagePath: 'assets/images/burger.png',
                            itemName: 'Burger',
                            fun: toggleFavorite,
                            sx: selectedFavorites),
                        CarouselItem(
                            index: 1,
                            imagePath: 'assets/images/piza.png',
                            itemName: 'Pizza',
                            fun: toggleFavorite,
                            sx: selectedFavorites),
                        CarouselItem(
                            index: 2,
                            imagePath: 'assets/images/sha.png',
                            itemName: 'Shawarma',
                            fun: toggleFavorite,
                            sx: selectedFavorites),
                        CarouselItem(
                            index: 3,
                            imagePath: 'assets/images/sandwich.png',
                            itemName: 'Sandwich',
                            fun: toggleFavorite,
                            sx: selectedFavorites),
                        CarouselItem(
                            index: 4,
                            imagePath: 'assets/images/frieds.png',
                            itemName: 'Chicken',
                            fun: toggleFavorite,
                            sx: selectedFavorites),
                        // Add other carousel items here as CarouselItem widgets
                      ],
                    ),
                    const SizedBox(height: 20),
                    dots(_currentCarouselPage),
                    const SizedBox(height: 30),
                    Text(
                      'Desi Food',
                      style: GoogleFonts.dancingScript(
                        fontSize: constraints.maxWidth < 600 ? 20 : 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(height: 20),
                    DesiFood(
                        index: 0,
                        imagePath: 'assets/images/biryani.png',
                        itemName: 'Biryani',
                        fun: toggleFavorite,
                        sx: selectedFavorites),
                    const SizedBox(height: 20),
                    DesiFood(
                        index: 1,
                        imagePath: 'assets/images/roast.png',
                        itemName: 'Roast',
                        fun: toggleFavorite,
                        sx: selectedFavorites),
                    const SizedBox(height: 20),
                    DesiFood(
                        index: 2,
                        imagePath: 'assets/images/saag.png',
                        itemName: 'Sagg',
                        fun: toggleFavorite,
                        sx: selectedFavorites),

                    const SizedBox(height: 20),
                    DesiFood(
                        index: 3,
                        imagePath: 'assets/images/butter.png',
                        itemName: 'Butter Chicken',
                        fun: toggleFavorite,
                        sx: selectedFavorites),

                    const SizedBox(height: 20),

                    DesiFood(
                        index: 4,
                        imagePath: 'assets/images/paneer.png',
                        itemName: 'Palak Paneer',
                        fun: toggleFavorite,
                        sx: selectedFavorites),
                    // Add other DesiFood items here
                  ],
                ),
              ),
            ),
          );
        },
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.business),
      //       label: 'Business',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.school),
      //       label: 'School',
      //     ),
      //   ],
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: Colors.amber[800],
      //   onTap: _onItemTapped,
      // ),
    );
  }
}

// ignore: must_be_immutable
class CarouselItem extends StatefulWidget {
  final int index;
  final String imagePath;
  final String itemName;
  Function(String s) fun;
  List<String> sx;
  CarouselItem(
      {Key? key,
      required this.imagePath,
      required this.index,
      required this.itemName,
      required this.fun,
      required this.sx})
      : super(key: key);

  @override
  CarouselItemState createState() => CarouselItemState();
}

class CarouselItemState extends State<CarouselItem> {
  double ratingx = 5;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red.shade900,
        borderRadius: BorderRadius.circular(20),
      ),
      width: 280,
      child: Column(
        children: [
          Image.asset(
            widget.imagePath,
            height: widget.itemName == 'Pizza' ? 100 : 100,
            width: widget.itemName == 'Pizza' ? 220 : 220,
          ),
          const SizedBox(height: 5),
          Align(
            alignment: Alignment.center,
            child: Text(
              widget.itemName,
              style: GoogleFonts.roboto(fontSize: 40, color: Colors.white),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                ratingx.toString(),
                style: GoogleFonts.roboto(fontSize: 30, color: Colors.white),
              ),
              const SizedBox(width: 8),
              RatingBar.builder(
                initialRating: 5,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 30,
                itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  setState(() {
                    ratingx = rating;
                  });
                },
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Ingredients(
                          a[widget.index],
                          index: widget.index,
                          widget.fun,
                          widget.sx),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white,
                ),
                child: const Text('View Recipe'),
              ),
              const SizedBox(width: 10),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add_box),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class DesiFood extends StatefulWidget {
  final String imagePath;
  final String itemName;
  final int index;
  Function(String s) fun;
  List<String> sx;

  DesiFood(
      {Key? key,
      required this.imagePath,
      required this.itemName,
      required this.index,
      required this.fun,
      required this.sx})
      : super(key: key);

  @override
  DesiFoodState createState() => DesiFoodState();
}

class DesiFoodState extends State<DesiFood> {
  double ratingx = 5;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(20),
      ),
      width: MediaQuery.of(context).size.width < 600
          ? 0.7 * MediaQuery.of(context).size.width
          : 410,
      constraints: BoxConstraints(
        maxHeight:
            MediaQuery.of(context).size.width < 600 ? 260 : double.infinity,
      ),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.width < 600 ? 100 : 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 18.0, left: 7),
                  child: Image.asset(
                    widget.imagePath,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 7),
          Column(
            children: [
              Text(
                widget.itemName,
                style: GoogleFonts.roboto(fontSize: 30, color: Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ratingx.toString(),
                    style:
                        GoogleFonts.roboto(fontSize: 30, color: Colors.white),
                  ),
                  RatingBar.builder(
                    initialRating: 5,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 30,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      setState(() {
                        ratingx = rating;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Ingredients(
                              b[widget.index],
                              index: widget.index,
                              widget.fun,
                              widget.sx),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                    ),
                    child: const Text('View Recipe'),
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add_box),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget dots(int v) {
  int currentCarouselPage = v;
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: List.generate(
      5, // Adjust this to match the number of carousel items
      (index) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: currentCarouselPage == index ? 12.0 : 8.0,
          height: 8.0,
          margin: const EdgeInsets.symmetric(horizontal: 4.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: currentCarouselPage == index ? Colors.blue : Colors.grey,
          ),
        );
      },
    ),
  );
}
