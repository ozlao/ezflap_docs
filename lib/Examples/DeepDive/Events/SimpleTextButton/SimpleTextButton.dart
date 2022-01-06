
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'SimpleTextButton.g.dart';

class SimpleTextButton extends EzStatefulWidgetBase {
	@override
	SimpleTextButtonState createState() => SimpleTextButtonState();
}

@EzWidget()
class SimpleTextButtonState extends _EzStateBase {
	/* PROPS (3) **/
	@EzProp("caption") late String _$prop_caption; // --> this._prop_caption


	/* EVENT EMITTERS (4) **/
	@EzEmit("pressed") late void Function() _$emit_pressed; // --> this._emit_pressed


	/* ZML (8) **/
	static const _ZML = """
		<TextButton z-bind:onPressed="onPressed">
			<Text>{{ caption }}</Text>
		</TextButton>
	""";


	/* BOUND METHODS (16) **/
	@EzMethod("onPressed")
	void _boundOnPressed() {
	    this._emit_pressed();
	}
}




