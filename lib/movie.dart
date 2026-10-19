class Movie {
  final String title;
  final String genre;
  final int year;
  final double rating;
  final String image;

  const Movie({
    required this.title,
    required this.genre,
    required this.year,
    required this.rating,
    required this.image,
  });
}

final List<Movie> movies = [
  const Movie(
    title: 'SONIC',
    genre: 'Sci-Fi',
    year: 2022,
    rating: 6.2,
    image: 'posters/photo_SONIC.jpg',
  ),
  const Movie(
    title: 'TOM&JERRY',
    genre: 'Animation',
    year: 1984,
    rating: 5.3,
    image: 'posters/photo_TOM&JERRY.jpg',
  ),
  const Movie(
    title: 'Toy 3',
    genre: 'Adventure',
    year: 2010,
    rating: 8.3,
    image: 'posters/photo_TOY 3.jpg',
  ),
  const Movie(
    title: 'LION KING',
    genre: 'Animation',
    year: 1994,
    rating: 8.5,
    image: 'posters/photo_LION KING.jpg',
  ),
  const Movie(
    title: 'FERDINAND',
    genre: 'Animation',
    year: 2017,
    rating: 6.7,
    image: 'posters/photo_FERDINAND.jpg',
  ),
  const Movie(
    title: 'ELEMENTAL',
    genre: 'Animation',
    year: 2023,
    rating: 7.0,
    image: 'posters/photo_ELEMENTAL.jpg',
  ),
  const Movie(
    title: 'SPONGBOP',
    genre: 'Animation',
    year: 1999,
    rating: 8.2,
    image: 'posters/photo_SPONGBOP.jpg',
  ),
  const Movie(
    title: 'COCO',
    genre: 'Animation',
    year: 2017,
    rating: 8.5,
    image: 'posters/photo_COCO.jpg',
  ),
];
