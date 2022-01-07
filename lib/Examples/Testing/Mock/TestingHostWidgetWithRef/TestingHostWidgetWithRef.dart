import 'dart:async';

import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/Testing/Mock/TestingHostedWidgetForRef/TestingHostedWidgetForRef.dart';
import 'package:flutter/material.dart';

part 'TestingHostWidgetWithRef.g.dart';

class TestingHostWidgetWithRef extends EzStatefulWidgetBase {
	TestingHostWidgetWithRef({ Key? key }) : super(key: key);

	@override
	TestingHostWidgetWithRefState createState() => TestingHostWidgetWithRefState();
}

@EzWidget()
class TestingHostWidgetWithRefState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text>Hosted widget:</Text>
			<TestingHostedWidgetForRef z-ref="myHostedWidget" />
			<Text>Message from hosted widget: {{ hostedWidgetMessage }}</Text>
		</Column>
	""";


	/* REFERENCES TO HOSTED WIDGETS (10) **/
	@EzRef("myHostedWidget") ITestingHostedWidgetForRefState? _$ref_myHostedWidget;
	// --> this._ref_myHostedWidget


	/* BOUND FIELDS (11) **/
	@EzField("hostedWidgetMessage") String _$hostedWidgetMessage = "N/A";
	// --> this._hostedWidgetMessage


	/* LIFECYCLE (20) **/
	@override
	Future<void> hookReady() async {
		this._hostedWidgetMessage = this._ref_myHostedWidget!.getCurrentMessage();
	}
}




