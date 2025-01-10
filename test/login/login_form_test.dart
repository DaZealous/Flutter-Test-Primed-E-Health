import 'package:flutter/material.dart';
import 'package:flutter_assessment/core/injections/locator.dart';
import 'package:flutter_assessment/presentation/auth/login/login_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';

void main() {
  setUp(() {
    configureDependencies();
  });

  tearDown(() {
    GetIt.I.reset();
  });

  testWidgets('Validate email and password form', (WidgetTester tester) async {
    await tester.runAsync(() async {
      await tester.pumpWidget(ProviderScope(
          child: MaterialApp(
        home: MediaQuery(
          data: const MediaQueryData(size: Size(1080, 1920)), // Adjust screen size
          child: LoginScreen(),
        ),
      )));

      final emailField = find.byType(TextFormField).first;
      final passwordField = find.byType(TextFormField).last;
      final loginButton = find.byType(ElevatedButton).first;

      await tester.ensureVisible(loginButton);

      await tester.tap(loginButton);
      await tester.pump();

      expect(find.text('Email cannot be empty'), findsOneWidget);
      expect(find.text(''), findsNWidgets(3));

      await tester.enterText(emailField, 'invalid-email');
      await tester.tap(loginButton);
      await tester.pump();

      expect(find.text('Invalid email'), findsOneWidget);

      await tester.enterText(emailField, 'test@example.com');
      await tester.enterText(passwordField, '12345');
      await tester.tap(loginButton);
      await tester.pump();

      expect(find.text(''), findsOneWidget);

      await tester.enterText(passwordField, 'password123');
      await tester.tap(loginButton);
      await tester.pump();

      expect(find.text('Email cannot be empty'), findsNothing);
      expect(find.text(''), findsNothing);
      expect(find.text('Invalid email'), findsNothing);
      expect(find.text(''), findsNothing);
    });
  });
}
