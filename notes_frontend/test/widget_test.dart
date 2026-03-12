import 'package:flutter_test/flutter_test.dart';
import 'package:notes_frontend/main.dart';

void main() {
  testWidgets('App boots', (WidgetTester tester) async {
    // NotesApp requires dotenv load in main(); tests directly pump widget.
    // This basic smoke test ensures widget tree builds.
    await tester.pumpWidget(const NotesApp());
    await tester.pump();

    // Auth screen title should be visible (unauth state by default in tests).
    expect(find.text('Retro Notes — Sign in'), findsOneWidget);
  });
}
