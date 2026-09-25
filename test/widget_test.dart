import 'package:flutter_test/flutter_test.dart';
import 'package:movie_watchlist_app/main.dart';

void main() {
  testWidgets('Movie Shelf app loads', (WidgetTester tester) async {
    await tester.pumpWidget(const MovieShelfApp());

    expect(find.text('MOVIE SHELF'), findsOneWidget);
    expect(find.text('Your Movie Collection'), findsOneWidget);
  });
}