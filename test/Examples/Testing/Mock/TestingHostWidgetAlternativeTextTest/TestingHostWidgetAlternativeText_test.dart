
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/Testing/Mock/TestingHostWidget/TestingHostWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ezflap/src/Service/EzflapTester/WidgetTesterExtension/WidgetTesterExtension.dart';

void main() {
	testWidgets("TestingHostWidgetAlternativeText_test", (WidgetTester tester) async {
		WidgetWrapper ww = WidgetWrapper(TestingHostWidget(),
			mapHostedWidgetMockFactories: {
				"TestingHostedWidget": WidgetMockFactory(
					funcWidgetFactory: () => Text("Alternative text!")
				),
			},
		);
		await tester.pumpWidgetIntoScaffold(ww.widget);

		expect(find.text("Hello ezFlap!"), findsNothing);
		expect(find.text("Alternative text!"), findsOneWidget);
	});
}


