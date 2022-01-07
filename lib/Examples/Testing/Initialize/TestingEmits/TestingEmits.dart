
import 'dart:async';
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'TestingEmits.g.dart';

class TestingEmits extends EzStatefulWidgetBase {
	TestingEmits({ Key? key }) : super(key: key);

	@override
	TestingEmitsState createState() => TestingEmitsState();
}

@EzWidget()
class TestingEmitsState extends _EzStateBase {
	/* EVENT EMITTERS (4) **/
	@EzEmit("incremented") late void Function(int newValue) _$emit_incremented;
	// --> this._emit_incremented


	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text>Counter: {{ counter }}</Text>
		</Column>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("counter") int _$counter = 0; // --> this._counter


	/* LIFECYCLE (20) **/
	@override
	Future<void> hookReady() async {
		Timer timer = Timer.periodic(Duration(seconds: 1), (_) {
			this._counter++;
			this._emit_incremented(this._counter);
		});
		this.onDispose(() => timer.cancel());
	}
}




