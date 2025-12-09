import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:profil/main.dart';

void main() {
  testWidgets('Profile screen loads correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // يتأكد إن عنوان الصفحة موجود
    expect(find.text("Profile"), findsOneWidget);

    // يتأكد إن الصورة موجودة
    expect(find.byType(CircleAvatar), findsWidgets);
  });
}
