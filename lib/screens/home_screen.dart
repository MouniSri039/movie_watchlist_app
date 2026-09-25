import 'package:flutter/material.dart';
import '../data/movies_data.dart';
import 'details_screen.dart';
import 'watchlist_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF101014),

      appBar: AppBar(
        backgroundColor: const Color(0xFF101014),
        elevation: 0,
        title: const Text(
          'MOVIE SHELF',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        ),
        centerTitle: false,
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),

            const Text(
              'Your Movie Collection',
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 6),

            Text(
              '${sampleMovies.length} movies to explore',
              style: TextStyle(
                color: Colors.grey.shade400,
                fontSize: 14,
              ),
            ),

            const SizedBox(height: 20),

            // View Watchlist button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const WatchlistScreen(),
                    ),
                  );
                },
                icon: const Icon(Icons.bookmark_border),
                label: const Text('View Watchlist'),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.amber,
                  side: const BorderSide(
                    color: Colors.amber,
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 14,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 16),

            Expanded(
              child: ListView.builder(
                itemCount: sampleMovies.length,
                itemBuilder: (context, index) {
                  final movie = sampleMovies[index];

                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => DetailsScreen(
                            movie: movie,
                          ),
                        ),
                      );
                    },

                    child: Container(
                      margin: const EdgeInsets.only(bottom: 16),

                      decoration: BoxDecoration(
                        color: const Color(0xFF1D1D24),
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.3),
                            blurRadius: 10,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),

                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(18),
                              bottomLeft: Radius.circular(18),
                            ),
                            child: Image.asset(
                              movie.posterPath,
                              width: 105,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ),

                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(16),

                              child: Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    movie.title,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  const SizedBox(height: 10),

                                  Text(
                                    movie.cast.join(' • '),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 12,
                                    ),
                                  ),

                                  const SizedBox(height: 14),

                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.movie_outlined,
                                        color: Colors.amber,
                                        size: 18,
                                      ),
                                      const SizedBox(width: 6),
                                      Text(
                                        'View Details',
                                        style: TextStyle(
                                          color: Colors.amber.shade400,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),

                          const Padding(
                            padding: EdgeInsets.only(right: 12),
                            child: Icon(
                              Icons.chevron_right,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
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