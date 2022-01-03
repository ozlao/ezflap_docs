
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'TextsInColumn.g.dart';

class TextsInColumn extends EzStatefulWidgetBase {
	@override
	TextsInColumnState createState() => TextsInColumnState();
}

@EzWidget()
class TextsInColumnState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text z-if="isReady1">Readiness Level 1</Text>
			<Text z-if="isReady2">Readiness Level 2</Text>
			<Text z-if="isReady3">Readiness Level 3</Text>
		</Column>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("isReady1") bool _$isReady1 = true; // --> this._isReady1
	@EzField("isReady2") bool _$isReady2 = true; // --> this._isReady2
	@EzField("isReady3") bool _$isReady3 = true; // --> this._isReady3
}




