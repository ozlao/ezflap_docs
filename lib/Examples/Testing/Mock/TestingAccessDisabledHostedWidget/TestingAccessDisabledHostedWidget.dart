
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'TestingAccessDisabledHostedWidget.g.dart';

class TestingAccessDisabledHostedWidget extends EzStatefulWidgetBase {
	TestingAccessDisabledHostedWidget({ Key? key }) : super(key: key);

	@override
	TestingAccessDisabledHostedWidgetState createState() => TestingAccessDisabledHostedWidgetState();
}

@EzWidget()
class TestingAccessDisabledHostedWidgetState extends _EzStateBase {
	/* PROPS (2) **/
	@EzProp("title") late String _$prop_title; // --> this._prop_title
	@EzProp("age") late int _$prop_age; // --> this._prop_age


	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text>Hello ezFlap!</Text>
		</Column>
	""";
}




