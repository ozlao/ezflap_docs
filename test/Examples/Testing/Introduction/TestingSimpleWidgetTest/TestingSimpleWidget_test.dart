
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/Testing/Introduction/TestingSimpleWidget/TestingSimpleWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ezflap/src/Service/EzflapTester/WidgetTesterExtension/WidgetTesterExtension.dart';

void main() {
	testWidgets("TestingSimpleWidget_test", (WidgetTester tester) async {
		WidgetWrapper ww = WidgetWrapper(TestingSimpleWidget());
		await tester.pumpWidgetIntoScaffold(ww.widget);

		expect(find.byType(Container), findsWidgets);
	});
}


