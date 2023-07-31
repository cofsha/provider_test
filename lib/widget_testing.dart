import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'main.dart';

void main(){
testWidgets("Flutter Widget Test",  (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    var textField = find.byType(TextField);
    expect(textField, findsOneWidget);
  });
}