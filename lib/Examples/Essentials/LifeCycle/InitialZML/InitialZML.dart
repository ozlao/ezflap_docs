
import 'dart:async';
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'InitialZML.g.dart';

class InitialZML extends EzStatefulWidgetBase {
	InitialZML({ Key? key }) : super(key: key);

	@override
	InitialZMLState createState() => InitialZMLState();
}

@EzWidget()
class InitialZMLState extends _EzStateBase {
	/* ZML (8) **/
	static const _INITIAL_ZML = """
		<Text>Loading...</Text>
	""";

	static const _ZML = """
		<Text>Ready to go!</Text>
	""";


	/* LIFECYCLE (20) **/
	Future<void> hookPrepare() async {
		await Future.delayed(Duration(seconds: 3));
	}
}




