import 'package:flutter/material.dart';

import 'movie.dart';
import 'movie_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  String query = '';
  bool isGrid = false;
  int discount = 20; // BONUS: one value shared by all cards
  void search(String value) {
    setState(() {
      query = value;
    });
  }

  void changeDiscount() {
    setState(() {
      if (discount > 0) {
        discount--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Movie> filtered_movies = movies.where((m) {
      return m.title.toLowerCase().contains(query.toLowerCase()) ||
          m.genre.toLowerCase().contains(query.toLowerCase());
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Movie Library",
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.2),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isGrid = !isGrid;
              });
            },
            icon: Icon(isGrid ? Icons.view_list : Icons.grid_view),
          ),
        ],
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 600),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  onChanged: search,
                  decoration: InputDecoration(
                    hintText: "Search movies...",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: filtered_movies.isEmpty
                    ? Center(child: Text("No movies found"))
                    : isGrid
                    ? GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.5,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return MovieCard(
                            movie: filtered_movies[index],
                            discount: discount,
                            onDiscountTap: changeDiscount,
                          );
                        },
                        itemCount: filtered_movies.length,
                      )
                    : ListView.builder(
                        itemBuilder: (BuildContext context, int index) {
                          return MovieCard(
                            movie: filtered_movies[index],
                            discount: discount,
                            onDiscountTap: changeDiscount,
                          );
                        },
                        itemCount: filtered_movies.length,
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
