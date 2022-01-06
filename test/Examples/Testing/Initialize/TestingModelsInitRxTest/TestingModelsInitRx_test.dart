
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/Testing/Initialize/TestingModelsInitRx/TestingModelsInitRx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:ezflap/src/Service/EzflapTester/WidgetTesterExtension/WidgetTesterExtension.dart';

void main() {
	testWidgets("TestingModelsInitRx_test", (WidgetTester tester) async {
		Rx<int> myModel = 42.obs;

		WidgetWrapper ww1 = WidgetWrapper(TestingModelsInitRx())
			..initModelWithRx<int>(name: "counter", existingModel: myModel)
		;

		WidgetWrapper ww2 = WidgetWrapper(TestingModelsInitRx())
			..initModelWithRx<int>(name: "counter", existingModel: myModel)
		;

		await tester.pumpWidgetIntoScaffold(Column(children: [ ww1.widget, ww2.widget ]));

		expect(find.text("Counter: 42"), findsNWidgets(2));
	});
}


