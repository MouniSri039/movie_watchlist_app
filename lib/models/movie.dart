class Movie {
  final String title;
  final String posterPath;
  final List<String> cast;
  final String synopsis;

  // Used for the graduate watchlist feature.
  bool isWatchlisted;

  Movie({
    required this.title,
    required this.posterPath,
    required this.cast,
    required this.synopsis,
    this.isWatchlisted = false,
  });
}