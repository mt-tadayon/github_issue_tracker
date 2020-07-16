import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_issue_tracker/widgets/text_form_widget.dart';

main() {
  group("TextFormWidget", () {
    testWidgets("should contain a Container if iconData is set",
        (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Material(
          child: TextFormWidget(
            hintText: "helloWorld",
            iconData: Icons.ac_unit,
          ),
        ),
      ));

      expect(tester.firstWidget(find.byType(Container)), isNotNull);
    });

    testWidgets("should contain a Container if iconData is set",
        (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Material(
          child: TextFormWidget(
            hintText: "helloWorld",
          ),
        ),
      ));

      expect(
        () => tester.widget(find.byType(Container)),
        throwsA(isStateError),
      );
    });
  });
}
