import 'dart:async';

import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/Advanced/InterpolatedText/InterpolatedTextHostee/InterpolatedTextHostee.dart';
import 'package:flutter/material.dart';

part 'InterpolatedTextHost.g.dart';

class InterpolatedTextHost extends EzStatefulWidgetBase {
	InterpolatedTextHost({ Key? key }) : super(key: key);

	@override
	InterpolatedTextHostState createState() => InterpolatedTextHostState();
}

@EzWidget()
class InterpolatedTextHostState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text>In Host. Seconds: {{ seconds }}</Text>
			<InterpolatedTextHostee>
				{{ seconds }} seconds passed!
			</InterpolatedTextHostee>
		</Column>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("seconds") int _$seconds = 0; // --> this._seconds


	/* LIFECYCLE (20) **/
	@override
	void hookInitState() {
		Timer timer = Timer.periodic(Duration(seconds: 1), (_) => this._seconds++);
		this.onDispose(() => timer.cancel());
	}
}




