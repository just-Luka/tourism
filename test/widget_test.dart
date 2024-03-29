// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:eapp1/internal/application.dart';
import 'package:eapp1/internal/facades/shared_preference_facade.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // testWidgets('Counter increments smoke test', (WidgetTester tester) async {
  //   // Build our app and trigger a frame.
  //   // ignore: prefer_const_constructors
  //   await tester.pumpWidget(Application());

  //   // Verify that our counter starts at 0.
  //   expect(find.text('0'), findsOneWidget);
  //   expect(find.text('1'), findsNothing);

  //   // Tap the '+' icon and trigger a frame.
  //   await tester.tap(find.byIcon(Icons.add));
  //   await tester.pump();

  //   // Verify that our counter has incremented.
  //   expect(find.text('0'), findsNothing);
  //   expect(find.text('1'), findsOneWidget);
  // });
/** 
  testWidgets("Language Widget test", (WidgetTester tester) async {
    WidgetsFlutterBinding.ensureInitialized();
    await dependencyInit();

    await tester.pumpWidget(Application());
    // await tester.pumpAndSettle();
  });
  */

  test('first test', () {
    int? sums(int a, int b) {
      return a + b;
    }

    final result = sums(15, 5);

    expect(result, 20);
  });
}

Future<void> dependencyInit() async {
  await SharedPreferenceFacade.init();
  await Firebase.initializeApp();
}
