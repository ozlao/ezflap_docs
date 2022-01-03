
import 'dart:async';
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'Disposal.g.dart';

class Disposal extends EzStatefulWidgetBase {
	@override
	DisposalState createState() => DisposalState();
}

@EzWidget()
class DisposalState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text>Counting and printing...</Text>
		</Column>
	""";


	/* PRIVATE FIELDS (12) **/
	int _numSeconds = 0;


	/* LIFECYCLE (20) **/
	Future<void> hookReady() async {
		Timer timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
			this._numSeconds++;
			print("${this._numSeconds} and counting...");
		});

		this.onDispose(() => timer.cancel());
	}
}




