import 'dart:async';
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/DeepDive/Props/PropsOverview/PropsOverview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'PropsReactivity.g.dart';

class PropsReactivity extends EzStatefulWidgetBase {
	@override
	PropsReactivityState createState() => PropsReactivityState();
}

@EzWidget()
class PropsReactivityState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<PropsOverview z-bind:backgroundColor="curColor" title="Hello ezFlap!" />
		</Column>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("curColor") Color _$curColor = Colors.red; // --> this._curColor


	/* LIFECYCLE (20) **/
	@override
	Future<void> hookReady() async {
		await Future.delayed(Duration(seconds: 3));
		this._curColor = Colors.blue;
	}
}




