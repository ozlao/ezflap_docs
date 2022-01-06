
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_widgets/ezflap_widgets.dart';
import 'package:flutter/material.dart';

part 'SimpleTextButtonEmitFromZml.g.dart';

class SimpleTextButtonEmitFromZml extends EzStatefulWidgetBase {
	@override
	SimpleTextButtonEmitFromZmlState createState() => SimpleTextButtonEmitFromZmlState();
}

@EzWidget()
class SimpleTextButtonEmitFromZmlState extends _EzStateBase {
	/* PROPS (3) **/
	@EzProp("caption") late String _$prop_caption; // --> this._prop_caption


	/* EVENT EMITTERS (4) **/
	@EzEmit("pressed") late void Function() _$emit_pressed; // --> this._emit_pressed


	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Column>
				<Text>With z-bind:</Text>
				<TextButton z-bind:onPressed="pressed">
					<Text>{{ caption }} (z-bind)</Text>
				</TextButton>
			</Column>
			<Column>
				<Text>With z-on, using the EzTextButton core widget:</Text>
				<EzTextButton z-on:pressed="pressed">
					<Text>{{ caption }} (z-on)</Text>
				</EzTextButton>
			</Column>
		</Column>
	""";
}




