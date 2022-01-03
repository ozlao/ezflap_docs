
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_widgets/ezflap_widgets.dart';
import 'package:flutter/material.dart';

part 'CoreWidgetsEzDropdownButton.g.dart';

class CoreWidgetsEzDropdownButton extends EzStatefulWidgetBase {
	@override
	CoreWidgetsEzDropdownButtonState createState() => CoreWidgetsEzDropdownButtonState();
}

@EzWidget()
class CoreWidgetsEzDropdownButtonState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<EzDropdownButton z-model="value">
				<DropdownMenuItem value="cat">
					<Text>Cat</Text>
				</DropdownMenuItem>
				<DropdownMenuItem value="dog">
					<Text>Dog</Text>
				</DropdownMenuItem>
			</EzDropdownButton>
			<Text>Selected: {{ value }}</Text>
		</Column>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("value") String? _$value = null; // --> this._value
}




