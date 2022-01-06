
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/Testing/Mock/TestingAccessDisabledHostWidget/TestingAccessDisabledHostWidget.dart';
import 'package:flutter_test/flutter_test.dart';

	void main() {
		testWidgets("TestingAccessDisabledHostWidget_test", (WidgetTester tester) async {
			WidgetWrapper ww = WidgetWrapper(TestingAccessDisabledHostWidget(),
				mapHostedWidgetMockFactories: {
					"TestingAccessDisabledHostedWidget": WidgetMockFactory() ,
				},
			);
			await tester.pumpWidgetIntoScaffold(ww.widget);

			expect(find.text("Hello ezFlap!"), findsNothing );


			WidgetMock widgetMock = ww.getSingleWidgetMock("TestingAccessDisabledHostedWidget");

			expect(widgetMock.isPropPopulated("title"), true);
			expect(widgetMock.isPropPopulated("age"), true);
			expect(widgetMock.getPropValue("title"), "Hello World");
			expect(widgetMock.getPropValue("age"), 42);

		});
	}


