
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'SlotsSectionWithExplicitNamedParameter.g.dart';

class SlotsSectionWithExplicitNamedParameter extends EzStatefulWidgetBase {
	@override
	SlotsSectionWithExplicitNamedParameterState createState() => SlotsSectionWithExplicitNamedParameterState();
}

@EzWidget()
class SlotsSectionWithExplicitNamedParameterState extends _EzStateBase {
	/* PROPS (3) **/
	@EzProp("title") late String _$prop_title; // --> this._prop_title


	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Container z-bind:color="Colors.pink">
				<Text>{{ title }}</Text>
			</Container>
			<Container z-bind:color="Colors.yellow">
				<child->
					<ZSlotConsumer>
						<Text>No content provided from host!</Text>
					</ZSlotConsumer>
				</child->
			</Container>
		</Column>
	""";
}





