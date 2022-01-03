
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'ComputedNamedParameter.g.dart';

class ComputedNamedParameter extends EzStatefulWidgetBase {
	@override
	ComputedNamedParameterState createState() => ComputedNamedParameterState();
}

@EzWidget()
class ComputedNamedParameterState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Container>
			<color->
				favoriteColor
			</color->
			<Text>Hello ezFlap!</Text>
		</Container>
	""";


	/* COMPUTED PROPERTIES (14) **/
	@EzComputed("favoriteColor")
	Color _computedFavoriteColor() {
		return Colors.pink;
	}
}




