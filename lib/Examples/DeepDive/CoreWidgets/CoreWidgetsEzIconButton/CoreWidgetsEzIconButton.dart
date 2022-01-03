
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_widgets/ezflap_widgets.dart';
import 'package:flutter/material.dart';

part 'CoreWidgetsEzIconButton.g.dart';

class CoreWidgetsEzIconButton extends EzStatefulWidgetBase {
	@override
	CoreWidgetsEzIconButtonState createState() => CoreWidgetsEzIconButtonState();
}

@EzWidget()
class CoreWidgetsEzIconButtonState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<EzIconButton z-on:pressed="onPressed()">
				<Icon z-bind:0="Icons.card_giftcard" />
			</EzIconButton>
		</Column>
	""";


	/* BOUND METHODS (16) **/
	@EzMethod("onPressed")
	void _boundOnPressed() {
	    print("Pressed!");
	}
}




