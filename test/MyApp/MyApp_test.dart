import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/MyApp/MyApp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
	// this test always ends with a Timer-related exception because these widgets
	// don't cancel their Timer when they are disposed (intentionally):
	// * BoundFieldsZBind2
	// * ComputedZBind2
	// ---
	// UPDATE: seems to not crash in Flutter 2.8.1 / Dart 2.15.1

	testWidgets("MyApp_test", (WidgetTester tester) async {
		WidgetWrapper<MyAppState, MyApp> ww = WidgetWrapper<MyAppState, MyApp>(
			MyApp(),
		);
		await tester.pumpWidgetIntoScaffold(ww.widget);

		int numWidgets = ww.ws.getNumWidgets();

		Finder nextButton = find.byKey(ValueKey("next"));
		expect(nextButton, findsOneWidget);

		await tester.tap(nextButton);
		for (int i = 0; i < numWidgets; i++) {
			String widgetKey = ww.ws.getWidgetKeyByIdx(i);
			//print("widget item num: ${i}; key: ${widgetKey}");
			await tester.pumpWithSeconds(1);
			if (i < numWidgets - 1) {
				await tester.tap(nextButton);
			}
		}
	});
}
