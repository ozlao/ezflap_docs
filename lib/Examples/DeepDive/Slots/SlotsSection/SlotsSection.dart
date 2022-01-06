
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'SlotsSection.g.dart';

class SlotsSection extends EzStatefulWidgetBase {
	@override
	SlotsSectionState createState() => SlotsSectionState();
}

@EzWidget()
class SlotsSectionState extends _EzStateBase {
	/* PROPS (3) **/
	@EzProp("title") late String _$prop_title; // --> this._prop_title


	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Container z-bind:color="Colors.pink">
				<Text>{{ title }}</Text>
			</Container>
			<Container z-bind:color="Colors.yellow">
				<ZSlotConsumer />
			</Container>
		</Column>
	""";
}




