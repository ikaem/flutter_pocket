// This is an example Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.
//
// Visit https://flutter.dev/docs/cookbook/testing/widget/introduction for
// more information about Widget testing.

void main() {
  // group(
  //   'MyWidget',
  //   () {
  //     testWidgets(
  //       'should display a string of text',
  //       (WidgetTester tester) async {
  //         // Define a Widget
  //         const myWidget = MaterialApp(
  //           home: Scaffold(
  //             body: Text('Hello'),
  //           ),
  //         );

  //         // Build myWidget and trigger a frame.
  //         await tester.pumpWidget(myWidget);

  //         // Verify myWidget shows some text
  //         expect(find.byType(Text), findsOneWidget);
  //       },
  //     );
  //   },
  // );

  // group(
  //   "Counter State Provider",
  //   () {
  //     testWidgets(
  //       "Initial state of counter screen should be 0",
  //       (WidgetTester tester) async {
  //         await tester.pumpWidget(
  //           const ProviderScope(
  //             // child: MaterialApp(
  //             //   home: StateProviderScreen(),
  //             // ),
  //             child: MyApp(),
  //           ),
  //         );

  //         await tester.tap(find.text("State Provider"));
  //         await tester.pumpAndSettle();

  //         // expectLater(
  //         //   find.text("Increment from 0"),
  //         //   findsOneWidget,
  //         // );

  //         final button = find.text("Increment from 0");

  //         expect(
  //           button,
  //           findsOneWidget,
  //         );

  //         await tester.tap(button);
  //         await tester.pump();

  //         expect(find.text("Increment from 1"), findsOneWidget);
  //         expect(button, findsNothing);
  //       },
  //     );

  //     testWidgets(
  //       "counter shate should not be shared between tests",
  //       (widgetTester) async {
  //         await widgetTester.pumpWidget(const ProviderScope(child: MyApp()));

  //         await widgetTester.tap(find.text("State Provider"));
  //         await widgetTester.pumpAndSettle();

  //         final button = find.text("Increment from 0");

  //         expect(button, findsOneWidget);
  //         // expect(find.text("Increment from 1"), findsNothing);
  //       },
  //     );
  //   },
  // );

  // group(
  //   "Testing Starwars",
  //   () {
  //     testWidgets(
  //       "Starwards provider should be using mock repository data",
  //       (tester) async {
  //         await tester.pumpWidget(
  //           ProviderScope(
  //             overrides: [
  //               swRepositoryProvider.overrideWithValue(
  //                 MockStarWarsRepository(),
  //               )
  //             ],
  //             child: const MyApp(),
  //           ),
  //         );
  //       },
  //     );
  //   },
  // );
}
