
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'SlotsParameters.g.dart';

class SlotsParameters extends EzStatefulWidgetBase {
	@override
	SlotsParametersState createState() => SlotsParametersState();
}

@EzWidget()
class SlotsParametersState extends _EzStateBase {
	/* PROPS (3) **/
	@EzProp("title") late String _$prop_title; // --> this._prop_title


	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Container z-bind:color="Colors.pink">
				<Text>{{ title }}</Text>
			</Container>
			<Column>
				<ZSlotConsumer animal="cat" />
				<Container z-for="curAnimal in animalsList">
					<ZSlotConsumer z-bind:animal="curAnimal" />
				</Container>
			</Column>
		</Column>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("animalsList") List<String> _$animalsList = [ // --> this._animalsList
		"dog",
		"tardigrade",
		"elephant",
		"lizard",
		"capybara",
	];
}




