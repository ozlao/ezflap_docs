
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'TestingProps.g.dart';

class TestingProps extends EzStatefulWidgetBase {
	TestingProps({ Key? key }) : super(key: key);

	@override
	TestingPropsState createState() => TestingPropsState();
}

@EzWidget()
class TestingPropsState extends _EzStateBase {
	/* PROPS (3) **/
	@EzProp("title") late String _$prop_title; // --> this._prop_title
	@EzProp("counter") late int _$prop_counter; // --> this._prop_counter


	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text>Title: {{ title }}</Text>
			<Text>Counter: {{ counter }}</Text>
		</Column>
	""";
}




