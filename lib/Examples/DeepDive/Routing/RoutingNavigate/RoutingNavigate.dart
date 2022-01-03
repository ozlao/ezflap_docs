
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_widgets/ezflap_widgets.dart';
import 'package:flutter/material.dart';

part 'RoutingNavigate.g.dart';

// note: this example is not designed to actually run (because navigation requires
//       additional support that is not currently implemented in this documentation
//       repository)
class RoutingNavigate extends EzStatefulWidgetBase {
	@override
	RoutingNavigateState createState() => RoutingNavigateState();
}

@EzWidget()
class RoutingNavigateState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<EzTextButton z-on:pressed="navigate()">
			<Text>Navigate!</Text>
		</EzTextButton>
	""";


	/* BOUND METHODS (16) **/
	@EzMethod("navigate")
	void _boundNavigate() {
	    Map<String, dynamic> arguments = {
	        "animalId": 42,
	        "animalName": "cat",
	    };
	    Navigator.pushNamed(this.context, "animal-profile", arguments: arguments);
	}
}




