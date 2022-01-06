
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/Testing/Initialize/TestingRouteParams/TestingRouteParams.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ezflap/src/Service/EzflapTester/WidgetTesterExtension/WidgetTesterExtension.dart';

void main() {
	testWidgets("TestingRouteParams_test", (WidgetTester tester) async {
		WidgetWrapper ww = WidgetWrapper(TestingRouteParams(),
			mapRouteParams: {
				"profileId": 88,
				"category": "animals",
			},
		);
		await tester.pumpWidgetIntoScaffold(ww.widget);

		expect(find.text("Profile id: 88"), findsOneWidget);
		expect(find.text("Category: animals"), findsOneWidget);
	});
}


